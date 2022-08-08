Rails.application.routes.draw do
  resources :gyms, only: %i[index] do
    resources :routes, only: %i[index]
  end

  root to: 'gyms#index'
end
