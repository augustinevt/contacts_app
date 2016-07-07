class Contact
  attr_reader :name, :addresses, :emails, :phones, :id

  @@contacts = []

  def self.clear()
    @@contacts = []
  end

  def self.contacts()
    @@contacts
  end

  def initialize(attributes)
    @name = attributes[:name]
    @addresses = []
    @emails = []
    @phones = []
    @id = @@contacts.length + 1
    @@contacts.push(self)
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

  define_singleton_method(:find) do |id|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id().eql?(id)
      found_contact = contact
      end
    end
    found_contact
  end

end
