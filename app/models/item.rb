class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :company
  has_many :guesses
end
