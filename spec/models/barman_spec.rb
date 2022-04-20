require 'rails_helper'

RSpec.describe Barman, type: :model do
  let (:barman) {FactoryBot.create :barman}
  
  it 'is invalid without name' do
    expect(FactoryBot.build :barman, name:nil).not_to be_valid
  end

end
