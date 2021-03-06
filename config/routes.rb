Rails.application.routes.draw do
  resources :posts
  get '/pages', to: 'pages#index'
  post '/pages', to: 'pages#create'
  get 'pages/new', to: 'pages#new', as: 'new_page'
  get '/pages/:id', to: 'pages#show', as: 'page'
  get '/pages/:id/edit', to: 'pages#edit'
  post '/pages/:id', to: 'pages#update', as: 'edit_page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
