class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :state
      t.string :password_hash
      t.string :email

      t. timestamps null: false
    end
  end
end

