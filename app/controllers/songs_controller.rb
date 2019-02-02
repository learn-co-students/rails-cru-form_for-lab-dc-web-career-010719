class SongsController < ApplicationController

  before_action :get_song, only: [:show, :edit, :update]
  before_action :get_artist_options, :get_genre_options, only: [:new, :edit]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(song)
  end

  def edit
  end

  def update
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  private

  def get_song
    @song = Song.find(params[:id])
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end

  def get_artist_options
    @artist_id_options = Artist.all.map{ |a| [a.name, a.id] }
  end

  def get_genre_options
    @genre_id_options = Genre.all.map{ |g| [g.name, g.id] }
  end

end
