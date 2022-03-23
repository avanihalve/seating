Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

   root to: "employees#index"
    resources :employees 
   resources :seats
    get '/search', to: "employees#search"

end
