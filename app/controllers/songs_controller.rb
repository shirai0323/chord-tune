class SongsController < ApplicationController
  require 'rspotify'
  require 'open-uri'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])
  
  def new
	@song = Song.new
  end

  def create
	@song = Song.new(song_params)
	if @song.save
		redirect_to songs_path
	else
		render :new
	end
  end

  def show
	@song = Song.find(params[:id])
	tracks = Rspotify::Track.search(@song.name).first(9)
	@track = tracks.find { |track| track.artists[0].name == @song.artist_name }
  end

  private

  def song_params
	params.require(:song).permit(:airtist, :title)
  end

end
