class Phone

  attr_reader :name, :number

  def initialize(attributes)
    @name = attributes[:name]
    @number = attributes[:number]
  end

end
