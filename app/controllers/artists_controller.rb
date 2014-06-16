class ArtistsController < ApplicationController

	def index
		@artists = Artist.all
	end

	def details
		@artist = Artist.find_by_id(params[:id])
		@songs = @artist.songs
	end

	def new
		@artist = Artist.new()
		#@artist = Artist.new(params[:artists])
		#if @artist.save
		#	redirect_to :action => 'index', :notice => 'Artist Successfully created'	
		#else
		#	rediect_to :action => 'index', :notice => 'Error! Artist was not created' 
		#end
	end	

	def create
#	@newartist = params[:artist]
#	Artist.new(@newartist).save
#	redirect_to :action => :index
	@artist = Artist.new(artist_params)

		if @artist.save
			redirect_to :action => 'index'
		else
			render :action => 'new'
		end
	end	

	def addsong
		@genres = Genre.all
#		@song = Song.new
		@artist = Artist.find_by_id(params[:id])
		@artist.songs.build(songs_params)
		@artist.save
#		@artist.songs.save
		#@artist.songs <<@song
		#@song.save

		redirect_to :action => 'details', :id => params[:id]
	end

	private
	def artist_params
		params.require(:artist).permit(:name, :age, :bio)
	end

        def songs_params
               #params.require(:song).permit(:title, :duration, :year)
#               params.require(:artist).permit(:id, songs_attributes: [:title, :duration, :year, :genre_id])
               params.require(:artist).permit!
        end

end
