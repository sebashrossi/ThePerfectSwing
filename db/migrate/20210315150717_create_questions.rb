class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :answer
      t.text :possible_answers, array: true, default: []
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
