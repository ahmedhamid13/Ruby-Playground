#### Struct vs Class ####

## Ruby Struct
SelectOption = Struct.new(:display, :value) do
  def to_ary
    [display, value]
  end
end

option_struct = SelectOption.new("Canada (CAD)", :cad)
puts option_struct.display
# Canada (CAD)
puts option_struct.to_ary.inspect
# ["Canada (CAD)", :cad]

## Ruby Class
class SelectOption

  attr_accessor :display, :value

  def initialize(display, value)
    @display = display
    @value   = value
  end

  def to_ary
    [display, value]
  end

end

option_class = SelectOption.new("USA (USD)", :usd)
puts option_class.display
# USA (USD)
puts option_class.to_ary.inspect
# ["USA (USD)", :usd]


### 
Customer = Struct.new(:name, :address) do
  def greeting
    "Hello #{name}!"
  end
end

dave = Customer.new("Dave", "123 Main")
puts dave.name     #=> "Dave"
puts dave.greeting #=> "Hello Dave!"