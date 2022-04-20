require 'rails_helper'

RSpec.describe "cashboxes/show", type: :view do
  before(:each) do
    @cashbox = assign(:cashbox, Cashbox.create!(
      money: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
