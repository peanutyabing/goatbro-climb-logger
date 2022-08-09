Rails.application.routes.draw do
  resources :gyms, only: %i[index] do
    resources :routes, only: %i[index new create]
  end

  root to: 'gyms#index'
end
