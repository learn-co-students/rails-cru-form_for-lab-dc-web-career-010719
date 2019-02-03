class SongsController < ApplicationController

  before_action :get_song, only: [:show, :update, :edit]
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
    @artists = Artist.all
    @genres = Genre.all
  end

  def create
    # byebug
    song = Song.create(song_params)
    redirect_to song
  end

  def edit

  end

  def update
    @song.update(song_params)
    redirect_to @song
  end

  def show
  end

  private
  def get_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
