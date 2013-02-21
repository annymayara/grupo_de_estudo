require 'sinatra'
require './gmail.rb'

get '/' do
	erb :index
end

get '/email/:email_to' do
	envia_email params[:email_to]
	"Email enviado para #{params[:email_to]}!"
end
