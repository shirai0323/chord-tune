class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.integer :kind, null: false
      t.text :content
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
