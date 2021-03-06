Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
     resources :users do
       resources :lists
     end


   resources :lists, only: [] do
     resources :items, only: [:create, :update, :index]
   end

   resources :items, only: [:destroy]
   match 'users/authenticate' => 'users#authenticate', via: :post

 end
end
