require "test_helper"

class BookClubsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_club = book_clubs(:one)
  end

  test "should get index" do
    get book_clubs_url
    assert_response :success
  end

  test "should get new" do
    get new_book_club_url
    assert_response :success
  end

  test "should create book_club" do
    assert_difference("BookClub.count") do
      post book_clubs_url, params: { book_club: { description: @book_club.description, name: @book_club.name } }
    end

    assert_redirected_to book_club_url(BookClub.last)
  end

  test "should show book_club" do
    get book_club_url(@book_club)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_club_url(@book_club)
    assert_response :success
  end

  test "should update book_club" do
    patch book_club_url(@book_club), params: { book_club: { description: @book_club.description, name: @book_club.name } }
    assert_redirected_to book_club_url(@book_club)
  end

  test "should destroy book_club" do
    assert_difference("BookClub.count", -1) do
      delete book_club_url(@book_club)
    end

    assert_redirected_to book_clubs_url
  end
end
