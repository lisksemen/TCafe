require 'rails_helper'

describe "barmen/show.html.erb" do
  let(:valid_barman) {FactoryBot.create(:barman, name: "Alex", salary: 300, age: 24)}

  it "Shows info about user" do
    assign(:barman, valid_barman)
    @barman = valid_barman
    render 'show'

    expect(rendered).to match valid_barman.name
    expect(rendered).to match valid_barman.salary.to_s
    expect(rendered).to match valid_barman.age.to_s
  end

  it "Show link to main list" do
    assign(:barman, valid_barman)
    render 'show'

    expect(rendered).to match 'Back'
    expect(rendered).to match 'Destroy'
  end

end
