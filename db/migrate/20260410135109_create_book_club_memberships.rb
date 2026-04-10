class CreateBookClubMemberships < ActiveRecord::Migration[8.1]
  def change
    create_table :book_club_memberships do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book_club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
