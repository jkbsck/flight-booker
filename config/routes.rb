Rails.application.routes.draw do
  get 'bookings/new'
  get 'flights' => 'flights#index' 
  root 'flights#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
