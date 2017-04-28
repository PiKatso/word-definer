require 'sinatra'
require 'sinatra/reloader'
require './lib/word_builder'
require 'pry'
also_reload('lib/**/*.rb')

get('/') do
  @output = Word.all
  erb(:index)
end

get('/word/add-word') do
  erb(:form)
end

post('/word/new-word') do
  word_input = params.fetch("word_input")
  define_term = params.fetch("define_word")

  new_word_hash = {:name => word_input, :definition => define_term}
  new_word = Word.new(new_word_hash)
  new_word.save
  erb(:success)
end
