# get '/sessions/new' do
#   erb :'sessions/new'
# end


# post '/sessions' do
#   user = self.authenticate(params[:email], params[:password])
#   if user
#     session[:user_id] = user.id
#     redirect '/'
#   else
#     erb :'sessions/new'
#   end
# end

# post  '/users' do
#   @user = User.new(params[:user])
#   if @user.save
#     session[:user_id] = @user.id
#     redirect "/users/#{@user.id}"
#   else
#     @errors = @user.errors.full_messages
#     erb :'users/new'
#   end
# end

# def authenticate(email, password)
#     @user = User.find_by(email)
#     if @user.password == self.password

#     else
#     end
# end

