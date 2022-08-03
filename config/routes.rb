Rails.application.routes.draw do
  # Root route
  root 'portfolios#index'

  # Routes for email contact form
  resources :contacts, only: %i[new create]

  # Route for downloading CV
  get '/download', to: 'portfolios#download'
end
