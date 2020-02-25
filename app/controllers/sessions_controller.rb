class SessionsController < ApplicationController

  def new
    @session = User.new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      log_in(user)
      flash.now[:success] = 'You are connected !'
      redirect_to root_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

end
