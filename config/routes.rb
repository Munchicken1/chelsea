Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'items/index'
  get 'items/closeout'
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
