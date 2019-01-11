class SessionsController < ApplicationController
  def new
  end

  # Create new session cookie
  def create
    @user =User.find_by_email(params[:email])
    # Check if user exists in the database... if yes, create session and redirect to user's page
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      #If user does not exist in database, redirect to login
      redirect_to new_session_path
      # INSERT action to send flash message that indicates email or password invalid ...OPTION
    end
  end

  # LOGOUT session
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
