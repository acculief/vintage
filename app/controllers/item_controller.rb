class ItemController < ApplicationController

  def show  #お店の詳細
    @item = Shop.find(params[:id])  #shopのidを取得

    #response = { :shop => @shop, :item => @item.items }
    #respond_to do |format|
    #  format.json  { render :json => response }
    #end

    render json:@item.items #has_manyの記述により、itemsテーブルに記述しておいたshop_idと対応して、それに該当するレコードを全てjsonで返す
  end



  def upload
    raise ArgumentError, 'invalid params' if params[:image].blank? || params[:itemname].blank?

    @item = Item.create(image: params[:image])

    @item.itemname = params[:itemname]
    @item.size = params[:size]
    @item.itemtext = params[:itemtext]


    @item.save!

  render json: {
      itemname:@item.itemname,
        size:@item.size,
        itemtext:@item.itemtext,
        image:@item.image.url
      }

  end

  def item_show
    @showitem = Item.find(params[:id])

    render json: @showitem
  end




end
