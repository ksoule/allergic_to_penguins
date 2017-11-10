get '/users/new' do
  # partial is loaded up and ready for ajax
  erb :'/users/_registration_form', layout: false
end

post '/users' do
  ep params
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
  else
    @errors = @user.errors.full_messages
  end
  erb :'/sessions/_logged_in_links', layout: false
end
