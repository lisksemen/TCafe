require 'rails_helper'

RSpec.describe Stock, type: :model do
  let(:stock) {FactoryBot.create :stock}
  context 'nil fields' do 
    it 'is invalid without field' do
      expect(FactoryBot.build :stock, milk:nil).not_to be_valid
    end
    it 'is invalid without field' do
      expect(FactoryBot.build :stock, sugar:nil).not_to be_valid
    end
    it 'is invalid without field' do
      expect(FactoryBot.build :stock, donuts:nil).not_to be_valid
    end
    it 'is invalid without field' do
      expect(FactoryBot.build :stock, brownies:nil).not_to be_valid
    end
    it 'is invalid without field' do
      expect(FactoryBot.build :stock, coffee:nil).not_to be_valid
    end
  end
  
  context 'negative fields' do 
    it 'is invalid without field' do
      expect(FactoryBot.build :stock, milk:-1).not_to be_valid
    end
    it 'is invalid without field' do
      expect(FactoryBot.build :stock, sugar:-3).not_to be_valid
    end
    it 'is invalid without field' do
      expect(FactoryBot.build :stock, donuts:-2).not_to be_valid
    end
    it 'is invalid without field' do
      expect(FactoryBot.build :stock, brownies:-3.5).not_to be_valid
    end
    it 'is invalid without field' do
      expect(FactoryBot.build :stock, coffee:-10.0).not_to be_valid
    end
  end

  it 'is valid by default' do
    expect(FactoryBot.build :stock).to be_valid  
  end
  
end
