Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'items/index'
  get 'items/specials'
  get 'items/smallseries'
  get 'items/mediumseries'
  get 'items/largeseries'
  get 'items/boxseries'
  get 'items/etcseries'
  get '/sitemap' => 'sitemaps#index'
  resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
