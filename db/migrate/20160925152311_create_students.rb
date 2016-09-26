class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password

      t.integer :classroom_id

      t.timestamps null: false
    end
  end
end
