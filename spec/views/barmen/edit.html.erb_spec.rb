require 'rails_helper'

describe "barmen/edit.html.erb" do
  let(:valid_barman_params) {{name: "Alex", salary: 300, age: 24}}
  let(:valid_barman) {FactoryBot.create(:barman, valid_barman_params)}


  it "shows links" do
    @barman = Barman.create(valid_barman_params)

    render 'edit'
    
    expect(rendered).to match 'Show'
    expect(rendered).to match 'Back'
  end

end
