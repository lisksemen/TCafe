require 'rails_helper'

RSpec.describe "barmen/new", type: :view do
  before(:each) do
    assign(:barman, Barman.new(
      name: "MyString",
      age: 12,
      salary: 8
    ))
  end

  it "renders new barman form" do
    render

    assert_select "form[action=?][method=?]", barmen_path, "post" do

      assert_select "input[name=?]", "barman[name]"
    end
  end
end
