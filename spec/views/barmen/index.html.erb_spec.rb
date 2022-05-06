require 'rails_helper'

describe "barmen/index.html.erb" do
  let(:valid_barman) {FactoryBot.create(:barman, name: "Alex", salary: 300, age: 24)}

  it "Shows info about users" do
    assign(:barman, valid_barman)
    @barmen = Barman.all
    render 'index'

    expect(rendered).to match valid_barman.name
    expect(rendered).to match valid_barman.salary.to_s
    expect(rendered).to match valid_barman.age.to_s
  end
end
