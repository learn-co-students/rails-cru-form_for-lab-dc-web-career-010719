class SongsController < ApplicationController
  before_action :get_song, only: [:show, :edit, :update]
  before_action :get_artists_and_genres, only: [:edit, :update]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
    @genres = Genre.all
    @artists = Artist.all
  end

  def create
    song = Song.create(song_params)
    redirect_to song
  end

  def edit
  end

  def update
    @song.update(song_params)
    redirect_to @song
  end

  private

  def get_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def get_artists_and_genres
    @genres = Genre.all
    @artists = Artist.all
  end
end
