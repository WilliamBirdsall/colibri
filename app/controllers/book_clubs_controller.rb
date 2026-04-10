class BookClubsController < ApplicationController
  before_action :set_book_club, only: %i[ show edit update destroy ]

  # GET /book_clubs or /book_clubs.json
  def index
    @book_clubs = BookClub.all
  end

  # GET /book_clubs/1 or /book_clubs/1.json
  def show
  end

  # GET /book_clubs/new
  def new
    @book_club = BookClub.new
  end

  # GET /book_clubs/1/edit
  def edit
  end

  # POST /book_clubs or /book_clubs.json
  def create
    @book_club = BookClub.new(book_club_params)

    respond_to do |format|
      if @book_club.save
        format.html { redirect_to @book_club, notice: "Book club was successfully created." }
        format.json { render :show, status: :created, location: @book_club }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_clubs/1 or /book_clubs/1.json
  def update
    respond_to do |format|
      if @book_club.update(book_club_params)
        format.html { redirect_to @book_club, notice: "Book club was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @book_club }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_clubs/1 or /book_clubs/1.json
  def destroy
    @book_club.destroy!

    respond_to do |format|
      format.html { redirect_to book_clubs_path, notice: "Book club was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_club
      @book_club = BookClub.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def book_club_params
      params.expect(book_club: [ :name, :description ])
    end
end
