class EnrollmentsController < ApplicationController
    before_action :authenticate_user!
    def show
        @enrollment = Enrollment.find(params[:id])
    end
    
    def new
        @enrollment = Enrollment.new
        @cohort = params[:cohort_id]
    end

    def edit
        @enrollment = Enrollment.find(params[:id])
    end

    def create
        @enrollment = Enrollment.new(cohort_id: params[:cohort_id], user_id: params[:enrollment][:user_id])

        if @enrollment.save
            redirect_to @enrollment.cohort
        else
            render 'new'
        end
    end

    def update
        @enrollment = Enrollment.find(params[:id])

        if @enrollment.update(enrollment_params)
            redirect_to @enrollment.cohort
        else
            render 'edit'
        end
    end

    def destroy
        @enrollment = Enrollment.find(params[:id])
        @enrollment.destroy
    end

    private 
    def enrollment_params
        params.require(:enrollment).permit(:user_id, :cohort_id)
    end

end