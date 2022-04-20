require 'rails_helper'

RSpec.describe "stocks/index", type: :view do
  before(:each) do
    assign(:stocks, [
      Stock.create!(
        brownie: 2,
        donut: 3,
        milk: 4.5,
        coffee: 5.5,
        sugar: 6.5
      ),
      Stock.create!(
        brownie: 2,
        donut: 3,
        milk: 4.5,
        coffee: 5.5,
        sugar: 6.5
      )
    ])
  end

end
