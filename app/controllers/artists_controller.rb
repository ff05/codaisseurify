class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    @artists_sort = Artist.sort_by_name
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy

    redirect_to artists_path
  end

end
