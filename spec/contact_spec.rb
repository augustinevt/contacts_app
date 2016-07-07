require('rspec')
require('contact')
require('address')
require('phone')
require('email')

describe('Contact') do
  before() do
    Contact.clear()
  end

  describe("Contact#initialize") do
    it("should return name of newly created contact object") do
      new_contact = Contact.new({name: "Dilly"})
      expect(new_contact.name()).to(eq('Dilly'))
    end
  end

  describe("Contact#addresses") do
    it("should return array of address objects contact object") do
      new_contact = Contact.new({name: "Dilly"})
      new_address_one = Address.new({street_address: "123 oak lane", city: "Portland", zip: "59932"})
      new_address_two = Address.new({street_address: "103 alder lane", city: "Portland", zip: "59932"})
      new_contact.add_address(new_address_one)
      new_contact.add_address(new_address_two)
      expect(new_contact.addresses()).to(eq([new_address_one, new_address_two]))
    end
  end

  describe("Contact#phones") do
    it("should return an array with phone number object") do
      new_contact = Contact.new({name: "Dilly"})
      new_phone_number_one = Phone.new({name: "work", number: "5036661234"})
      new_phone_number_two = Phone.new({name: "home", number: "5417881000"})
      new_contact.add_phone(new_phone_number_one)
      new_contact.add_phone(new_phone_number_two)
      expect(new_contact.phones()).to(eq([new_phone_number_one, new_phone_number_two]))
    end
  end

  describe('Contact#emails') do
    it('should return an array with email objects') do
      new_contact = Contact.new({name: "Dilly"})
      new_email_one = Email.new({name: "personal", email: "dilly@gmail.com"})
      new_email_two = Email.new({name: "work", email: "dilly@newrelic.com"})
      new_contact.add_email(new_email_one)
      new_contact.add_email(new_email_two)
      expect(new_contact.emails()).to(eq([new_email_one,new_email_two]))
    end
  end


end
