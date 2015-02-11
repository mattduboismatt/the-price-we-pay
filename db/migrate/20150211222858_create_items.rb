class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.binary :image
      t.integer :price
      t.references :category
      t.references :company

      t.timestamps null: false
    end
  end
end
