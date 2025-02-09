class CreateExperiences < ActiveRecord::Migration[8.0]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :role
      t.string :link
      t.string :location
      t.integer :start_date
      t.integer :end_date
      t.text :details
      t.string :type

      t.timestamps
    end
  end
end
