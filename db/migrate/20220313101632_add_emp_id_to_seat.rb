class AddEmpIdToSeat < ActiveRecord::Migration[6.0]
  def change
     add_reference :seats, :employee, null: false, foreign_key: true
  end
end
