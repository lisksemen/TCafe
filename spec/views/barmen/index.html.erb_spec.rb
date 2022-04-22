require 'rails_helper'

RSpec.describe "barmen/index", type: :view do
  before(:each) do
    assign(:barmen, [
      Barman.create!(
        name: "MyString",
        age: 12,
        salary: 8
      ),
      Barman.create!(
        name: "MyString",
        age: 12,
        salary: 8
      )
    ])
  end
end
