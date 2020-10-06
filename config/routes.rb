Rails.application.routes.draw do
  resources :bookings
  get 'flights' => 'flights#index' 
  root 'flights#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
