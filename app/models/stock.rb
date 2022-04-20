class Stock < ApplicationRecord
        validates :brownies, :donuts, :milk, :sugar, :coffee, numericality: {greater_than_or_equal_to: 0}
        validates :brownies, :donuts, :milk, :sugar, :coffee, presence: true
end
