class AddSalaryToBarmen < ActiveRecord::Migration[7.0]
  def change
    add_column :barmen, :salary, :integer
  end
end
