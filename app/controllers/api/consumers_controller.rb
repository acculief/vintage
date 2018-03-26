class Api::ConsumersController < ApplicationController


  def create
      consumer = Consumer.new(create_params)

      # エラー処理
      unless consumer.save # もし、consumerが保存できなかったら
        @error_message = [consumer.errors.full_messages].compact # エラーが入ってるインスタンス変数を定義
      end
    end


    private
    def create_params
      params.permit(:name,:pwd)
    end








end
