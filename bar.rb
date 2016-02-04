# What happens in the bar

require './beer'
require './Person_class'
require './customer'
require './bartender'

the_bartender = Bartender.new("Joe")
captain_jack = Customer.new("Cpt. Jack")

the_bartender.greet(captain_jack)
the_bartender.serve(captain_jack)

# Captain Jack can drink while he has beer
while captain_jack.has_beer?
  captain_jack.drink!
  sleep 0.3
end

captain_jack.drink!
the_bartender.serve(captain_jack)
