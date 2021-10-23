Rails.application.routes.draw do
  post 'upload/new'
  get 'upload/index'
  resources :inventories do
    collection { post :import}
  end
  root 'upload#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
