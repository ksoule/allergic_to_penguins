get '/' do
  session.destroy
  redirect '/surveys'
end

get '/surveys' do
  erb :'/surveys/index'
end
