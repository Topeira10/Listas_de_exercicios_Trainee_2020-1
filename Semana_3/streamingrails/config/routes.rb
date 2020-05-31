Rails.application.routes.draw do
  root 'albums#index'
  resources :musics
  resources :albums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
