require 'rails_helper'

RSpec.describe Cashbox, type: :model do
  let (:cashbox) {FactoryBot.create :cashbox}
  
  it 'is invalid without money' do
    expect(FactoryBot.build :cashbox, money:nil).not_to be_valid
  end
  it 'is invalid with negative amount of money' do
    expect(FactoryBot.build :cashbox, money:-1).not_to be_valid
  end
  it 'is valid with positive amount of money' do
    expect(FactoryBot.build :cashbox, money:5.1).to be_valid
  end
end
