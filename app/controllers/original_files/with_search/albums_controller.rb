class AlbumsController < ApplicationController

	before_action :find_album, only: [:show, :edit, :update, :destroy]

	def index
		if params[:genre].blank?
			@albums = Album.search(params[:search])
		else
			@genre_id = Genre.find_by(name: params[:genre]).id
			@albums = Album.where(:genre_id => @genre_id).order("created_at DESC")
		end							
	end

	def show
	end

	def new

		@album = current_user.albums.build

		@genres = Genre.all.map{ |c| [c.name, c.id] }

	end

	def create
		# @album = Album.new(album_params)

		@album = current_user.albums.build(album_params)
		@album.genre_id = params[:genre_id]

		if @album.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@genres = Genre.all.map{ |c| [c.name, c.id] }
	end

	def update
		@album.genre_id = params[:genre_id]
		if @album.update(album_params)
			redirect_to album_path(@album)
		else
			render 'edit'
		end
	end

	def destroy
		@album.destroy
		redirect_to root_path
	end

	private

		def album_params
			params.require(:album).permit(:title, :artist, :song1, :song2, :song3, :song4, :song5, :song6, :song7, :song8, :song9, :song10, :genre_id, :album_img)
		end

		def find_album
			@album = Album.find(params[:id])
		end


end
