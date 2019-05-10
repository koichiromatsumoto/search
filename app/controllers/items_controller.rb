class ItemsController < ApplicationController

    def index
    	@q = Item.ransack(params[:q])
        @items = @q.result(distinct: true)
        @genres = Genre.all
        @q.sorts = 'id desc' if @q.sorts.empty?
    end

    def new
    	@item = Item.new
    end

    def create
    	@item = Item.new(item_params)
        @item.save
        redirect_to items_path
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    	@item = Item.find(params[:id])
    	@item.destroy
    	redirect_to items_path
    end

    private
    def item_params
    	params.require(:item).permit！
    end

end
