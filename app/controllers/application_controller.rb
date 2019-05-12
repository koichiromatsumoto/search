class ApplicationController < ActionController::Base

    before_action :set_search

    def  set_search
    	@search = Item.includes(:artist).ransack(params[:q])
    	@search_items = @search.result(distinct: true).order(id: :desc)
    	@genres = Genre.all
    end

end
