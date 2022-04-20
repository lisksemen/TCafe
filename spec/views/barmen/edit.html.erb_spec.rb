require 'rails_helper'

RSpec.describe "barmen/edit", type: :view do
  before(:each) do
    @barman = assign(:barman, Barman.create!(
      name: "MyString"
    ))
  end

  it "renders the edit barman form" do
    render

    assert_select "form[action=?][method=?]", barman_path(@barman), "post" do

      assert_select "input[name=?]", "barman[name]"
    end
  end
end
