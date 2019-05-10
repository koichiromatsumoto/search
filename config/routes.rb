Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :items
    resources :artists
    resources :labels
    resources :genres
    root to: "items#new"

end
