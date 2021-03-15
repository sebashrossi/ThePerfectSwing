class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :length
      t.string :description
      t.string :video_url
      t.references :training, null: false, foreign_key: true

      t.timestamps
    end
  end
end
