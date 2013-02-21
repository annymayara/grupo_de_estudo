require 'sinatra'


get '/hi/:name' do
  "Hello #{params[:name]}!"
end

