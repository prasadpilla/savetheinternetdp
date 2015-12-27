class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #before_filter :redirect_to_https

  #def redirect_to_https
   # redirect_to :protocol => "https://" unless request.ssl?
  #end

  private
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end

    helper_method :current_user
end
