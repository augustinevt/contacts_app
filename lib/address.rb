class Address

  attr_reader :street_address, :city , :zip

  def initialize(attributes)
    @street_address = attributes[:street_address]
    @city = attributes[:city]
    @zip = attributes[:zip]
  end

end
