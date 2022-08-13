Rails.application.routes.draw do
  resources :gyms, only: %i[index] do
    resources :routes, only: %i[index new create show] do
      resources :reviews, only: %i[new create]
    end
  end

  root to: 'gyms#index'
end
