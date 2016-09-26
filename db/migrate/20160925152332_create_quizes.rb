class CreateQuizes < ActiveRecord::Migration
  def change
    create_table :quizes do |t|
      t.integer :num_questions
      t.float :score

      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
