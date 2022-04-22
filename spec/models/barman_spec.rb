require 'rails_helper'

RSpec.describe Barman, type: :model do
  let (:barman) {FactoryBot.create :barman}
  context "is nvalid without field" do
    it 'is invalid without name' do
      expect(FactoryBot.build :barman, name:nil).not_to be_valid
    end
    it 'is invalid without age' do
      expect(FactoryBot.build :barman, age:nil).not_to be_valid
    end
    it 'is invalid without salary' do
      expect(FactoryBot.build :barman, salary:nil).not_to be_valid
    end
  end
  
  context "is invalid with wrong fields" do
    it 'is invalid with negative age' do
      expect(FactoryBot.build :barman, age:-1).not_to be_valid
    end
    it 'is invalid with negative salary' do
      expect(FactoryBot.build :barman, salary:-1).not_to be_valid
    end
    
  end


end
