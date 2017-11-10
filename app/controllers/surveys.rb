get '/' do
  session.destroy
  redirect '/surveys'
end

get '/surveys' do
  erb :'/surveys/index'
end

get '/surveys/new' do
  erb :'/surveys/new'
end

post '/surveys' do
  @survey = Survey.new(params[:survey])
  if @survey.save
  redirect "/questions"
  else
    @errors = @survey.errors.full_messages
    erb :'/surveys/new'
  end
end


