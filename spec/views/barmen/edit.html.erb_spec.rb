require 'rails_helper'

RSpec.describe "barmen/edit", type: :view do
  before(:each) do
    @barman = assign(:barman, Barman.create!(
      name: "MyString",
      age: 12,
      salary: 8
    ))
  end

end
