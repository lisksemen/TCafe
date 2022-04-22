class Barman < ApplicationRecord
    validates :name, :age, :salary, presence:true
    validates :age, :salary, numericality: {greater_than_or_equal_to: 0}

    def to_s
        return "Barman " + name + ", age: " + age.to_s + ", salary: " + salary.to_s
    end

    has_and_belongs_to_many :cashboxes
end
