require 'rails_helper'

RSpec.describe "cashboxes/edit", type: :view do
  before(:each) do
    @cashbox = assign(:cashbox, Cashbox.create!(
      money: 1
    ))
  end

  it "renders the edit cashbox form" do
    render

    assert_select "form[action=?][method=?]", cashbox_path(@cashbox), "post" do

      assert_select "input[name=?]", "cashbox[money]"
    end
  end
end
