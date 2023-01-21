class CreatePostAirtists < ActiveRecord::Migration[7.0]
  def change
    create_table :post_airtists do |t|
      t.references :post, foreign_key: true
      t.references :airtist, foreign_key: true

      t.timestamps
    end
  end
end
