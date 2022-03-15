class RemoveEmployeeIdFromSeatsTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :seats, :employee_id
  end
end
