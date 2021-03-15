class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.string :name
      t.string :description
      t.string :department
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
