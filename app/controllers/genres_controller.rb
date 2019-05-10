class GenresController < ApplicationController

    def new
    	@genre = Genre.new
    end

    def create
    	@genre = Genre.new(genre_params)
    	@genre.save
    	redirect_to root_path
    end

    private
    def genre_params
    	params.require(:genre).permit(:genre_name, items_attributes: [:item_name, :sales])
    end

end
