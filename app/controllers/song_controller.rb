class SongController < ApplicationController
  def index
	@songs = Song.all
  end

  def new
	@song = Song.new()
  end

  def create
	
  end
end
