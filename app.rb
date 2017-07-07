require 'sinatra'
require "sinatra/reloader"
require './lib/controller.rb'
also_reload('lib/**/*.rb')

get '/' do
	erb :index
end