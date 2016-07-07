class Contact
  attr_reader :name, :addresses, :emails, :phones

  @@contacts = []

  def self.clear()
    @@contacts = []
  end

  def initialize(attributes)
    @name = attributes[:name]
    @addresses = []
    @emails = []
    @phones = []
  end

  def add_address(address)
    @addresses.push(address)
  end

  def add_phone(phone)
    @phones.push(phone)
  end

  def add_email(email)
    @emails.push(email)
  end

end
