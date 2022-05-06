require 'rails_helper'

describe "barmen/new.html.erb" do
  let(:valid_barman_params) {{name: "Alex", salary: 300, age: 24}}
  let(:valid_barman) {FactoryBot.create(:barman, valid_barman_params)}

  it "shows new barman params" do
    @barman = Barman.create(valid_barman_params)
    
    render 'show'

    expect(rendered).to match valid_barman.name
    expect(rendered).to match valid_barman.salary.to_s
    expect(rendered).to match valid_barman.age.to_s
  end
end
