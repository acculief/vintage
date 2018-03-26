class ShopController < ApplicationController

  def upload
    raise ArgumentError, 'invalid params' if params[:image].blank? || params[:shopname].blank?

    @shop = Shop.create(image: params[:image])

    @shop.shopname = params[:shopname]
    @shop.addr = params[:addr]
    @shop.tel = params[:tel]
    @shop.text = params[:text]

    @shop.save!

    render json: {
        shopname: @shop.shopname,
        addr: @shop.addr,
        tel: @shop.tel,
        text: @shop.text,
        image: @shop.image.url
    }
  end

  def index                           #shopの情報をjsonで返す
    @shop = Shop.all
    render json: @shop
  end

  def show
    @shop = Shop.find(params[:id])

    render json: @shop
  end



end
