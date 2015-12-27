class SessionsController < ApplicationController
#before_filter :redirect_to_https
  def create
    begin
      @user = User.from_omniauth(request.env['omniauth.auth'])
      session[:user_id] = @user.id
      flash[:success] = "That's Awesome ! #{@user.name}"
    rescue
      flash[:warning] = "There was an error while trying to authenticate you..."
    end
    redirect_to profile_path
  end

  def destroy
    if current_user
      current_user.delete_images
      session.delete(:user_id)
      flash[:success] = 'Thanks for supporting! Spread the word, for freedom'
    end
    redirect_to root_path
  end

end
