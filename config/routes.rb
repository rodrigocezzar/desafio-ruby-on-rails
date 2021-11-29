Rails.application.routes.draw do
  root 'transactions#home'
  get 'transactions/create'
  get 'transactions/show'
  get 'transactions/balance'
  post 'transactions/create', to: 'transactions#create'
end
