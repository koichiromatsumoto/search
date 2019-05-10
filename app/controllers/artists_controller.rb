class ArtistsController < ApplicationController

# アーティスト登録用

    def new
    	@artist = Artist.new
    end

    def create
    	@artist = Artist.new(artist_params)
    	@artist.save
    	redirect_to root_path
    end

    def index
        @artists = Artist.all
    end

    def destroy
        @artist = Artist.find(params[:id])
        @artist.destroy
        redirect_to artists_path
    end

    private
    def artist_params
    	params.require(:artist).permit(:artist_name, items_attributes: [:item_name, :sales])
    end

end
