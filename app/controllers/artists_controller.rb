class ArtistsController < ApplicationController

    def new
    	@artist = Artist.new
    end

    def create
    	@artist = Artist.new(artist_params)
    	@artist.save
    	redirect_to root_path
    end

    private
    def artist_params
    	params.require(:artist).permit(:artist_name, items_attributes: [:item_name, :sales])
    end

end
