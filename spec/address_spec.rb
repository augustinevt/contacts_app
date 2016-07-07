require('rspec')
require('address')

describe('Address') do

  describe("Address#initialize") do

    it("should return an address from a newly created address object") do
      new_address = Address.new({:street_address=> "123 Street", :city=> "Portland", :zip=> "92512"})
      expect(new_address.street_address()).to(eq("123 Street"))
    end
  end

end
