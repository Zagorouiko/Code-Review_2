require 'sinatra'
require 'sinatra/reloader'
require './lib/definition'
require './lib/word'
also_reload './lib/*/**.rb'
require 'pry'

get('/') do
  erb(:index)
end

get('/words/new') do
  erb(:words_form)
end

get('/words') do
  @word_list = Word.all()
  erb(:words)
end

post('/words') do
  word = params.fetch('word')
  Word.new(word).save()
  @word_list = Word.all()
  erb(:words)
end

get('/definition/:id') do
  @definition = Definition.find(params.fetch('id'))
  erb(:definition)
end

get('/words/:id') do
  @words = Word.find(params.fetch('id').to_i())
  erb(:word)
end

get('/words/:id/definition/new') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word_definition_form)
end
post('/definition') do
  definitions = params.fetch('definitions')
  @definition = Definition.new(definitions)
  @definition.save()
  @word_list = Word.find(params.fetch('word_id').to_i())
  @word_list.add_definition(@definition)
  erb(:success)
end
