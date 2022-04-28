class Barman < ApplicationRecord
    validates :name, :age, :salary, presence:true
    validates :salary, numericality: {greater_than_or_equal_to: 0}
    validates :age, numericality: {in: 18..65}
    validates :name, length: {minimum: 2}

    def to_s
        return "Barman " + name + ", age: " + age.to_s + ", salary: " + salary.to_s
    end

end
