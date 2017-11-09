get '/users/new' do
  erb :'/surveys/index'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
  else
    @errors = @user.errors.full_messages
  end
  erb :'/surveys/index'
end
