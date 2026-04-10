class BookClub < ApplicationRecord
  has_many :events
  has_many :book_club_memberships
  has_many :users, through: :book_club_memberships
end
