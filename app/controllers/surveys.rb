get '/' do
  redirect '/surveys'
end

get '/surveys' do
  erb :'/surveys/index'
end
