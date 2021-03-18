class UsersController < ApplicationController
    skip_before_action :ensure_user_logged_in
    def index
        render "new"
    end
    def create
        u_name=params[:name]
        u_email=params[:email]
        u_password=params[:password]
        user=User.create(u_name:u_name,u_email:u_email,password:u_password,u_role:"customer")
        if user.save
            session[:current_user_id]=user.id
            redirect_to "/"
        else
            #flash[:error]=user.errors.full_messages.join(", ")
            flash[:error]="All the fields are mandatory!"
            redirect_to new_user_path
        end
    end

   
end