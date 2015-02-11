class User < ActiveRecord::Base
  has_many :guesses
  has_many :guessed_items, through: :guesses, source: :item

  validates :email,
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create },
            presence: true,
            uniqueness: true
  has_secure_password

end
