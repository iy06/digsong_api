class Api::SongsController < ApplicationController
  def index
    all_songs
  end

  def create
    binding.pry
    Song.create(song_params)
    all_songs
  end

  def update
    all_songs
  end

  def destroy
    all_songs
  end

  private

  def song_params
    params.permit(:title, :key, :bpm, :image, :song_data)
  end

  def all_songs
    @songs = Song.order('created_at DESC')
    # songs.json.jbuilderを返す
    render :songs
  end

  def select_song
    @song = Song.find(params[:id])
  end
end
