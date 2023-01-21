class CreateAirtists < ActiveRecord::Migration[7.0]
  def change
    create_table :airtists do |t|
      t.string :name

      t.timestamps
    end
  end
end
