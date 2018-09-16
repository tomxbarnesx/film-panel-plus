class InstructorsController < ApplicationController
    before_action :authenticate_user!
    def index
        @instructors = Instructor.all
        # method: get
        # template: users/index.html.erb
    end

    def show
        @instructor = Instructor.find(params[:id])
        # method: get
        # action: index
        # template: users/show.html.erb
    end

    def new
        @instructor = Instructor.new
    # method: get
    # action: index
    # template: users/new.html.erb
    end

    def edit
        @instructor = Instructor.find(params[:id])
        # template: users/edit.html.erb
    end

    def create
        
        @instructor = Instructor.new(instructor_params)
        @instructor.build_user(user_params)

        if @instructor.save
            redirect_to @instructor
        else
            render 'new'
        end
    end

    def update
        @instructor = Instructor.find(params[:id])
 
        if @instructor.update(instructor_params) && @instructor.user.update(user_params)
            redirect_to @instructor
        else
            render 'edit'
        end
    end

    def destroy
        @instructor = Instructor.find(params[:id])
        @instructor.destroy
    end
    
    
    private
        def instructor_params
        params.require(:instructor).permit(:salary, :edu)
        end

        def user_params
        params.require(:user).permit(:first_name, :last_name, :photo_url, :birthdate, :email, :password)
        end
end