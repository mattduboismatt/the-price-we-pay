class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.binary :image
      t.integer :price

      t.timestamps null: false
    end
  end
end
