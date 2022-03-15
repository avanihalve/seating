class CreateSeats < ActiveRecord::Migration[6.0]
  def change
    create_table :seats do |t|
      t.string :seat_no

      t.timestamps
    end
  end
end
