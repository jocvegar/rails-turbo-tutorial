Rails.application.routes.draw do
  get 'line_items/new'
  get 'line_items/create'
  get 'line_items/edit'
  get 'line_items/update'
  get 'line_items/destroy'
  resources :line_item_dates
  root 'pages#home'
  devise_for :users
  resources :quotes
  resources :quotes do
    resources :line_item_dates, except: [:index, :show] do
      resources :line_items, except: [:index, :show]
    end
  end
end
