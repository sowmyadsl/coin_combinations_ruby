require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('enters a number into the input field') do
    visit('/')
    fill_in('input-field', :with => '59')
    click_button('send')
    expect(page).to have_content('Your change is: 2 quarter(s) 1 nickel(s) 4 pennies(s) (The coin machine has 28 quarters, 30 dimes, 29 nickels, and 26 pennies remaining)')
  end
end
