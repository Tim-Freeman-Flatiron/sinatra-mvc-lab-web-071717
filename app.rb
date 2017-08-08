require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb :user_input
	end

	post '/piglatinize' do
		@pig = PigLatinizer.new
		@user_string = params[:user_phrase]
		erb :pig_latinized
	end

end