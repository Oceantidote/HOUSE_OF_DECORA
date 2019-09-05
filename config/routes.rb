Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/services', to: 'pages#services'
  get '/contact', to: 'pages#contact'
  get '/testimonials', to: 'pages#testimonials'
  get '/gallery', to: 'pages#gallery'
  post '/send_email', to: 'pages#send_email'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
