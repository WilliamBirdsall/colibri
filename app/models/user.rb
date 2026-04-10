class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :book_club_memberships
  has_many :book_clubs, through: :book_club_memberships

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
