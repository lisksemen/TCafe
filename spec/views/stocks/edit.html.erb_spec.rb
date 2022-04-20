require 'rails_helper'

RSpec.describe "stocks/edit", type: :view do
  before(:each) do
    @stock = assign(:stock, Stock.create!(
      brownie: 1,
      donut: 1,
      milk: 1.5,
      coffee: 1.5,
      sugar: 1.5
    ))
  end

end
