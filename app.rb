require 'sinatra'
require 'sinatra/reloader'
require './lib/word_builder'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
