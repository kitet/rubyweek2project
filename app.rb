require 'sinatra'
require "sinatra/reloader"
require 'lib/controller.rb'
also_reloader('lib/**/*.rb')