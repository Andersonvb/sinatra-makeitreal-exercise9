require 'sinatra'

get '/' do
  if request.env['HTTP_PERMISO'] == 'soy-un-token-secreto' 
    erb :success
  else
    erb :failure
  end
end
