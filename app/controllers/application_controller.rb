class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :ensure_user_logged_in

  def ensure_user_logged_in
    unless current_user
      redirect_to "/"
    end
  end

  def ensure_user_role
    unless current_user.u_role=="owner"
      redirect_to view_items_path
    end
  end
  def current_user
    #memoization
    return @current_user if @current_user

    current_user_id = session[:current_user_id]
    if current_user_id
      @current_user = User.find(current_user_id)
    else
      nil
    end
  end

end