class Event < ApplicationRecord
 belongs_to :book_club
 has_rich_text :description
end
