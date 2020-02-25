module SessionsHelper
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    if session[:user_id]
      true
    else
      false
    end
  end

  def log_in(user)
    session[:user_id] = user.id
  end
end
