require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel path', {:type => :feature}) do
  it('processes the user input and returns a shipping cost') do
    visit('/')
    fill_in('length', :with => '5')
    fill_in('width', :with => '5')
    fill_in('height', :with => '5')
    fill_in('weight', :with => '20')
    fill_in('speed', :with => 'regular')
    click_button('Calculate Shipping')
    expect(page).to have_content('$7')
  end
end
