require 'rails_helper'

RSpec.describe "stocks/show", type: :view do
  before(:each) do
    @stock = assign(:stock, Stock.create!(
      brownie: 2,
      donut: 3,
      milk: 4.5,
      coffee: 5.5,
      sugar: 6.5
    ))
  end

end
