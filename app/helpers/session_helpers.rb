helpers do

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    session[:user_id] != nil
  end

  def authenticate!
    @errors = ["You're not logged in!"] if !logged_in?
  end

end
