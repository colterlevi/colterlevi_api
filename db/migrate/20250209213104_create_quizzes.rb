class CreateQuizzes < ActiveRecord::Migration[8.0]
  def change
    create_table :quizzes do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
