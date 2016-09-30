class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string  :question
      t.string  :correct_answer
      t.string  :response
      t.integer :subject_id

      t.integer :quiz_id

      t.timestamps null: false
    end
  end
end

