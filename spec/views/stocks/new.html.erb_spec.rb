require 'rails_helper'

RSpec.describe "stocks/new", type: :view do
  before(:each) do
    assign(:stock, Stock.new(
      brownie: 1,
      donut: 1,
      milk: 1.5,
      coffee: 1.5,
      sugar: 1.5
    ))
  end

end
