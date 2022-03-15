class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :fname
      t.string :lname
      t.string :office_id
      t.string :contact

      t.timestamps
    end
  end
end
