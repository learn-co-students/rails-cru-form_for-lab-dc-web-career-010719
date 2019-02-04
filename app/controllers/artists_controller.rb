class ArtistsController < ApplicationController
  before_action :find_artist, only: [:show, :update, :edit]
  def show
  end

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    #byebug
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def edit
  end

  def update
  @artist.update(artist_params)
  redirect_to @artist
  end


  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def find_artist
    @artist = Artist.find(params[:id])
  end
end
