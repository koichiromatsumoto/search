class ItemsController < ApplicationController


    def index

    end

# ↓商品登録用↓
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
        params.require(:item).permit(:item_name, :artist_id, :label_id, :genre_id, :sales)
    end

end
