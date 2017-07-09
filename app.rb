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
	newword=nil
	word=params['newword']
	newword=Word.new(word)
	Controller.newWord(newword)
	erb :success
end

get '/word/:id' do
	@returnedword=nil
	@returnedword=Controller.find_by_id(params.fetch('id').to_i)
	@definitions=@returnedword.all_definitions
	@showFrom=false
	erb :word
end

post '/word/:id' do
	returnedword=nil
	@returnedword=Controller.find_by_id(params.fetch('id').to_i)
	definition=params['definition']
	mydef=Definition.new(definition)
	@returnedword.add_definition(mydef)
	@definitions=@returnedword.all_definitions
	erb :word
end
