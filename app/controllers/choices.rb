post '/choices' do
  @survey = Survey.find_by(id: params[:survey_id])

  user_choices = params[:choice].values

  user_choices.each do |answer_id|
    Choice.create(chooser_id: current_user.id, answer_id: answer_id)
  end

  content_type :json
  @survey.survey_stats.to_json
end
