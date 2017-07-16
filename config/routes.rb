Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
     devise_for :users
     resources :users do
       resources :lists
     end


   resources :lists, only: [] do
     resources :items, only: [:create, :update, :index]
   end

   resources :items, only: [:destroy]

 end
end
