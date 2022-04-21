require 'rails_helper'

RSpec.describe "cashboxes/new", type: :view do
  before(:each) do
    assign(:cashbox, Cashbox.new(
      money: 1
    ))
  end

  it "renders new cashbox form" do
    render

    assert_select "form[action=?][method=?]", cashboxes_path, "post" do

      assert_select "input[name=?]", "cashbox[money]"
    end
  end
end
