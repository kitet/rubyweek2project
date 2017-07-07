require 'sinatra'
require "sinatra/reloader"
require './lib/controller.rb'
also_reload('lib/**/*.rb')

get '/' do
	@listedwordobjects=Controller.get_all_words()
	erb :index
end

get '/new_word' do
	erb :new_word
end

post '/new_word' do
	word=params['word']
	newword=Word.new(word)
	Controller.new_word(newword)
	erb :success
end

get '/word/:id' do
	@word=Controller.find_by_id(params.fetch('id').to_i())
	erb :word
end