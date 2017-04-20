class Fixnum
  define_method :change do
  cents = self
  returned_change = {
    'quarters' => [[30, 0]],
    'dimes' => [[30, 0]],
    'nickels' => [[30, 0]],
    'pennies' => [[30, 0]]
  }

  until cents < 25 do
    returned_change['quarters'][0][1] = returned_change['quarters'][0][1] + 1
    returned_change['quarters'][0][0] = returned_change['quarters'][0][0] - 1
    cents = cents - 25
  end #end quarters loop
  until cents < 10 do
    returned_change['dimes'][0][1] = returned_change['dimes'][0][1] + 1
    returned_change['dimes'][0][0] = returned_change['dimes'][0][0] - 1
    cents = cents - 10
  end
  until cents < 5 do
    returned_change['nickels'][0][1] = returned_change['nickels'][0][1] + 1
    returned_change['nickels'][0][0] = returned_change['nickels'][0][0] - 1
    cents = cents - 5
  end
  returned_change['pennies'][0][1] = returned_change['pennies'][0][1] + cents
  returned_change['pennies'][0][0] = returned_change['pennies'][0][0] - cents
  returned_change
  end
end
