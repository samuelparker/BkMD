helpers do
  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  def log_in(user)
    session[:id] = user.id
  end

  def create_session
    @user = User.find_by_email(params[:email])
    if @user && @user.password == params[:password]
      login(@user)
      redirect "/users/#{@user.id}"
    else
      @errors = ["Email and or Password not found."]
      erb :"users/new"
    end
  end
end