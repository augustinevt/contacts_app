require('rspec')
require('contact')

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
end
