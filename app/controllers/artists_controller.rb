class ArtistsController < ApplicationController

  before_action :get_artist, only: [:show, :edit, :update]

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.create(artist_params(:name, :bio))
    redirect_to artist_path(artist)
  end

  def edit
  end

  def update
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def get_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end
