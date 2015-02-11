class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :guess_price
      t.references :item
      t.references :user

      t.timestamps null: false
    end
  end
end
