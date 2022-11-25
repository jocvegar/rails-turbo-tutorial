Rails.application.routes.draw do
  resources :line_item_dates
  root 'pages#home'
  devise_for :users
  resources :quotes
  resources :quotes do
    resources :line_item_dates, except: [:index, :show]
  end
end
