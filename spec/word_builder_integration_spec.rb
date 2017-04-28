require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("index path", {:type => :feature}) do
  it("will show a list of all words") do
    visit("/")
    expect(page).to have_content("")
  end

  it("/word/new-word") do
    visit("/word/add-word")
    fill_in('word_input', :with => 'hi')
    fill_in('define_word', :with => 'hello')
    click_button('Submit')
    expect(page).to have_content("")
  end
end
