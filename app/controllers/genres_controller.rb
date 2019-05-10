class GenresController < ApplicationController


# ジャンル登録用

    def new
    	@genre = Genre.new
    end

    def create
    	@genre = Genre.new(genre_params)
    	@genre.save
    	redirect_to root_path
    end

    def index
        @genres = Genre.all
    end

    def destroy
        @genre = Genre.find(params[:id])
        @genre.destroy
        redirect_to genres_path
    end

    private
    def genre_params
    	params.require(:genre).permit(:genre_name, items_attributes: [:item_name, :sales])
    end

end
