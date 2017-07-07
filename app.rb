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
	word=params['newword']
	newword=Word.new(word)
	Controller.newWord(newword)
	erb :success
end

get '/word/:id' do
	@returnedword=Controller.find_by_id(params['id'].to_i)
	erb :word
end