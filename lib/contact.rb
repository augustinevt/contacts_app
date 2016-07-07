class Contact
  attr_reader :name, :addresses, :email, :phone

  @@contacts = []

  def self.clear()
    @@contacts = []
  end

  def initialize(attributes)
    @name = attributes[:name]
    @addresses = []
    @email = []
    @phone = []
  end


end
