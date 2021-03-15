class CreateSectionUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :section_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true
      t.integer :quiz_score

      t.timestamps
    end
  end
end
