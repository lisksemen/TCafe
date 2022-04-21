require 'rails_helper'

RSpec.describe "barmen/index", type: :view do
  before(:each) do
    assign(:barmen, [
      Barman.create!(
        name: "Name"
      ),
      Barman.create!(
        name: "Name"
      )
    ])
  end
end
