class Fixnum
  define_method :change do
  cents = self
  returned_change = {
    'quarters' => [],
    'dimes' => [],
    'nickels' => [],
    'pennies' => []
  }
  num_of_quarters = 0
  num_of_dimes = 0
  num_of_nickels = 0
  num_of_pennies = 0

  until cents < 25 do
    num_of_quarters = num_of_quarters + 1
    cents = cents - 25
  end #end quarters loop
  until cents < 10 do
    num_of_dimes = num_of_dimes + 1
    cents = cents - 10
  end
  until cents < 5 do
    num_of_nickels = num_of_nickels + 1
    cents = cents - 5
  end
  returned_change['quarters'].push(num_of_quarters)
  returned_change['dimes'].push(num_of_dimes)
  returned_change['pennies'].push(cents)
  returned_change['nickels'].push(num_of_nickels)
  returned_change
  end
end
