get '/' do
  # session.destroy
  redirect '/surveys'
end

get '/surveys' do
  @surveys = Survey.all
  erb :'/surveys/index'
end

get '/surveys/new' do
  @survey = Survey.new
  erb :'/surveys/new'
end

post '/surveys' do
  redirect '/' unless current_user
  @survey = current_user.surveys.new(params[:survey])
  if @survey.save
    redirect "/surveys/#{@survey.id}/questions/new"
  else
    @errors = @survey.errors.full_messages
    erb :'/surveys/new'
  end
end

get '/surveys/:id' do
  @survey = Survey.find_by(id: params[:id])
  @questions = @survey.questions

  erb :'/surveys/show', layout: false
end


