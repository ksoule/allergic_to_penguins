post '/choices' do 
  @survey = Survey.find_by(id: params[:survey_id])
  @stats = @survey.survey_stats
  user_choices = params[:choice].values

  user_choices.each do |answer_id|
    Choice.create(chooser_id: current_user.id, answer_id: answer_id)
  end

  erb :'/surveys/_results', layout: false
end