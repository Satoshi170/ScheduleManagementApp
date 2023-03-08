Rails.application.routes.draw do
  root 'posts#home'
  get 'posts' => 'posts#home'
  get 'posts/new' => 'posts#new'
  post 'posts' => 'posts#create'
  get ':id/show' => 'posts#show'
  get ':id/edit' => 'posts#edit'
  patch 'posts/:id' => 'posts#update'
  delete ':id/destroy' => 'posts#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
