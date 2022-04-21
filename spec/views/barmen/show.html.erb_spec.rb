require 'rails_helper'

RSpec.describe "barmen/show", type: :view do
  before(:each) do
    @barman = assign(:barman, Barman.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
