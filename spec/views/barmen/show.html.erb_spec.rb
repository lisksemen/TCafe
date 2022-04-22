require 'rails_helper'

RSpec.describe "barmen/show", type: :view do
  before(:each) do
    @barman = assign(:barman, Barman.create!(
      name: "MyString",
      age: 12,
      salary: 8
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
