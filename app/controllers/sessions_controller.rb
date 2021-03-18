class SessionsController  < ApplicationController
    skip_before_action :ensure_user_logged_in
    def new
        render "new"
    end
    def signin
        user=User.find_by(u_email: params[:email])
        if user && user.authenticate(params[:password])
            session[:current_user_id]=user.id
            if user.u_role=="owner"
                #redirect_to "/"
                redirect_to menus_path
            else
                redirect_to "/customers"
            end
        else
            render plain:"enter correct credentials"
        end
    end
    def destroy
        session[:current_user_id] = nil
        @current_user = nil
        redirect_to "/"
    end
end