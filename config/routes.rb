Rails.application.routes.draw do

  namespace :api, default: {format: :json} do #jbuilderを用いたユーザー情報の登録
    resources :consumers
  end

  post "shop/upload"  #shopデータのupload
  get "shop/index" =>"shop#index"  #shopデータの吐き出し
  get "shop/:id"   =>"shop#show"  #shopの詳細表示


  get "item/:id"  =>"item#show" #shopに存在するitemの表示
  post "item/upload"  #新規itemの作成


  get "showitem/:id" => "showitem#show"





end
