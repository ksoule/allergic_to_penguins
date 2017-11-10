# prepped for ajax

get '/sessions/new' do
  # partial is loaded up and ready for ajax
  erb :'/_login_form'
end

post '/sessions' do
  @user = User.find_by(email: params[:email])
  if @user && @user.authenticate!(params[:password])
    session[:user_id] = @user.id
  else
    @errors = @user.errors.full_messages
  end
  erb :'/surveys/index'
end
