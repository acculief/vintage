class ShowitemController < ApplicationController

  def show
    @show_item = Item.find(params[:id])

    render json: @show_item
  end




end
