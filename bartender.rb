#Bartender class

class Bartender < Person
  def initialize(name)
    super # Call the initialize(name) method in the super class (Person)
    @customers = []
  end

  def greet(customer)
    super
    @customers << customer
  end

  def serve(customer)
    if customer.drunk?
      say "No more for you, #{customer.name}!"
    else
    say "There ya go.more for you."
    customer.take_beer(Beer.new)
  end
  end
end
