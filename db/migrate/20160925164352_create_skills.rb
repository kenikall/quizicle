class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.float :fluency
      t.float :accuracy

      t.integer :student_id
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
