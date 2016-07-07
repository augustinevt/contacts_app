require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/address')
require('./lib/email')
require('./lib/phone')

get('/') do
  @contacts = Contact.contacts()
  erb(:index)
end

get('/new_contact') do
  erb(:new_contact)
end

get('/contact/:id') do
  id = params[:id].to_i()
  @contact = Contact.find(id)
  erb(:contact)
end

post('/create_contact') do
  name = params[:name]

  street_address = params[:street_address]
  city = params[:city]
  zip = params[:zip]

  contact = Contact.new({name: name})

  contact.add_address(Address.new({street_address: street_address, city: city, zip: zip}))

  redirect "/contact/#{contact.id()}"
end
