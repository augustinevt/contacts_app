require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe "root route", {:type => :feature} do

  it ("clicks on the add new contact button and displays the header for that route") do
    visit('/')
    click_button('Add New Contact')
    expect(page).to have_content('Add Contact')
  end

  it("returns a list of contacts with links on the home page") do
    new_contact = Contact.new({name: "Big Bee"})
    visit('/')
    expect(page).to have_content('Big Bee')
  end

end

describe 'new_contact route', {:type => :feature} do
  it('should return name of new contact') do
    visit('/new_contact')
    fill_in("name", :with => "Dilly")
    click_button('Add Contact')
    expect(page).to(have_content('Dilly'))
  end

  it('should create new address object display it') do
    visit('/new_contact')
    fill_in("name", :with => "Dilly")
    fill_in('street_address', :with => "123 Dogwood Stench lane")
    fill_in('city', :with => "Chanchant")
    fill_in('zip', :with => "23456")
    click_button('Add Contact')
    expect(page).to(have_content("123 Dogwood Stench lane"))
  end

  it('should create a new email object and display it' ) do
    visit('/new_contact')
    fill_in()
  end

end
