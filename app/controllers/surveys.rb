get '/' do
  # session.destroy
  redirect '/surveys'
end

get '/surveys' do
  @surveys = Survey.all
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

get '/surveys/:id' do 
  @survey = Survey.find_by(id: params[:id])
  @questions = Survey.questions
  
  erb :'/surveys/show'
end


