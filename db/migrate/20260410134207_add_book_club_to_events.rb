class AddBookClubToEvents < ActiveRecord::Migration[8.1]
  def change
    add_reference :events, :book_club, null: false, foreign_key: true
  end
end
