class Cashbox < ApplicationRecord
    validates :money, presence: true
    validates :money, numericality: {greater_than_or_equal_to: 0}
end
