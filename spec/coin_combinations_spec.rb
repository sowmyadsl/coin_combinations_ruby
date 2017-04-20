require ('coin')
require ('rspec')

describe("Fixnum#change") do
  it("will receive a number as input and return the same number") do
    expect(43.change).to(eq(43))
  end
  it("  will receive a number from the user as input and return the greatest number of quarters that could possibly exist within that number") do
    expect(43.change).to(eq("one quarter"))
  end
end
