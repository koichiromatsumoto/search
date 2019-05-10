class ItemsController < ApplicationController


    def index

    	@search = Item.ransack(params[:q])
         # => params[:q]に検索パラメータが渡される
         # => 今回は@searchというインスタンス変数に渡して検索オブジェクトを作成
        @items = @search.result(distinct: true)
        # => 検索結果を@itemsに渡す
        @genres = Genre.all
        # => ジャンルのプルダウンボックスを作成するときに使用
        @search.sorts = 'id desc' if @search.sorts.empty?
        # => ソート機能の記述だけどうまくいってないので要改良
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
