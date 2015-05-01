require ('word')
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

 describe('word definition path', {:type => :feature}) do
   it('adds a word') do
   visit('/words/new')
   fill_in('word', :with => 'cat')
   click_button('Add a Word')
   expect(page).to have_content('cat')
 end
end
