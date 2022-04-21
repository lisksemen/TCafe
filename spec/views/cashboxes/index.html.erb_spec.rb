require 'rails_helper'

RSpec.describe "cashboxes/index", type: :view do
  before(:each) do
    assign(:cashboxes, [
      Cashbox.create!(
        money: 2
      ),
      Cashbox.create!(
        money: 2
      )
    ])
  end

end
