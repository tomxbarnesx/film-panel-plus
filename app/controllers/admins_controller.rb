class AdminsController < ApplicationController
    before_action :authenticate_user!
    def index
        @admins = Admin.all
        # method: get
        # template: admins/index.html.erb
    end

    def show
        @admin = Admin.find(params[:id])
        # method: get
        # action: index
        # template: admins/show.html.erb
    end

    def new
        @admin = Admin.new
        @edus = ["GED", "Bachelors", "Masters", "PhD"]
    # method: get
    # action: index
    # template: admins/new.html.erb
    end

    def edit
        @admin = Admin.find(params[:id])
        # template: admins/edit.html.erb
    end

    def create
        @admin = Admin.new(admin_params)
        @admin.build_user(user_params)

        # @admin.build_user(first_name: params[:user][:first_name])

        if @admin.save
            redirect_to @admin
        else
            render 'new'
        end
    end
    
    def update
        @admin = Admin.find(params[:id])
    
        if @admin.update(admin_params) && @admin.user.update(user_params)
            redirect_to @admin
        else
            render 'edit'
        end
    end

    def destroy
        @admin = Admin.find(params[:id])
        @admin.destroy
    end

    private
        def admin_params
        params.require(:admin).permit(:salary, :edu)
        end
    
        def user_params
            params.require(:user).permit(:first_name, :last_name, :photo_url, :birthdate, :email, :password)
        end
end
