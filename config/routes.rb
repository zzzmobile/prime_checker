Rails.application.routes.draw do
  root 'primes#index'
  
  get '/primes', to: 'primes#index'
  post '/primes', to: 'primes#create'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
