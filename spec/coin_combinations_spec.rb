require ('coin')
require ('rspec')

describe("Fixnum#change") do
  # it("will receive a number as input and return the same number") do
  #   expect(43.change).to(eq(43))
  # end
  # it("will receive a number from the user as input and return the greatest number of quarters that could possibly exist within that number") do
  #   expect(43.change).to(eq({"quarters"=>[1], "dimes"=>[], "nickels"=>[], "pennies"=>[18]}))
  # end

  it("will receive a number from the user as input and return the greatest number of quarters, then the greatest number of dimes, etc (for nuckels and pennies, too) that could possibly exist within that number") do
    expect(43.change).to(eq({"quarters"=>[[29, 1]], "dimes"=>[[29, 1]], "nickels"=>[[29, 1]], "pennies"=>[[27, 3]]}))
  end
  it("will start with a pre dertermines amount of coins in the stash, and will subtract each coin given as change") do
    expect(73.change).to(eq({"quarters"=>[[28, 2]], "dimes"=>[[28, 2]], "nickels"=>[[30, 0]], "pennies"=>[[27, 3]]}))
  end


end
