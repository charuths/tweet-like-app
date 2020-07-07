Rails.application.routes.draw do
  post 'follow_user' =>'users#follow_user'
  delete 'unfollow_user' => 'users#unfollow_user'

  devise_for :users

  resource :users do
    resource :blogs
  end
end
