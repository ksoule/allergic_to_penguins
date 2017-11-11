post '/choices' do 
  user_choices = params[:choice].values

  user_choices.each do |answer_id|
    Choice.create(chooser_id: current_user.id, answer_id: answer_id)
  end

  # Will change redirect to erb and implement AJAX.
  redirect '/surveys' 
end