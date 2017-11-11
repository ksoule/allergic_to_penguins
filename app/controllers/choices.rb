post '/choices' do 
  # some weird statkeeping shit here?
  # params[:possible_choices].each do?  Can I do that?
  user_choices = params[:choice].values
  ep user_choices

  user_choices.each do |answer_id|
    Choice.create(chooser_id: current_user.id, answer_id: answer_id)
  end

  redirect '/surveys' 
end