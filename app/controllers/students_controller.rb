class StudentsController < ApplicationController
    before_action :authenticate_user!
    def index
        @students = Student.all
        # method: get
        # template: users/index.html.erb
    end

    def show
        @student = Student.find(params[:id])
        # @enrollment = Enrollment.find(params[:id])
        # @enrollments = @student.user.enrollments
        # method: get
        # action: index
        # template: users/show.html.erb
    end

    def new
        @student = Student.new
    # method: get
    # action: index
    # template: users/new.html.erb
    end

    def edit
        @student = Student.find(params[:id])
        # template: users/edit.html.erb
    end

    def create
        @student = Student.new(student_params)
        @student.build_user(user_params)

        # @student.build_user(first_name: params[:user][:first_name])

        if @student.save
            redirect_to @student
        else
            render 'new'
        end
    end
   
    def update
        @student = Student.find(params[:id])
 
        if @student.update(student_params) && @student.user.update(user_params)
            redirect_to @student
        else
            render 'edit'
        end
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
     
        redirect_to students_path
    end
    
    private
        def student_params
        params.require(:student).permit(:background)
        end

        def user_params
        params.require(:user).permit(:first_name, :last_name, :photo_url, :birthdate, :email, :password)
        end

end