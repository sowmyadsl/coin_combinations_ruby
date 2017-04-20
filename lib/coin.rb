class Fixnum
  define_method :change do
  cents = self
  counter = cents
  returned_change = {
    'quarters' => [],
    'dimes' => [],
    'nickels' => [],
    'pennies' => []
  }
    until counter.==(0)
      if cents >= 25
        returned_change['quarters'].push(1)
        cents = cents - 25
        counter = counter - 25
      else
        counter = counter - 1
      end # ends if else statement
    end #ends until loop
    returned_change['pennies'].push(cents)
    returned_change
  end #ends change method
end
