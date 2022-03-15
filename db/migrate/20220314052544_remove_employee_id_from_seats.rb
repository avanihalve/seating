class RemoveEmployeeIdFromSeats < ActiveRecord::Migration[6.0]
  def change
     remove_foreign_key :seats, :employees
  end
end
