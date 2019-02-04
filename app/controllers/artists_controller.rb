class ArtistsController < ApplicationController
  before_action :set_artist, only: [:edit, :show, :update]

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new
    @artist.name = params[:artist][:name]
    @artist.bio = params[:artist][:bio]
    @artist.save
    redirect_to artist_path(@artist)
  end

  def update
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
