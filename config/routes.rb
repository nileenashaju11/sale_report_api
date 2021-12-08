Rails.application.routes.draw do
  resources :sale_details
  get 'sale_details/index', to:'sale_details#index'
  root :to => "sale_details#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
