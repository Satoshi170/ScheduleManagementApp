Rails.application.routes.draw do
  root 'posts#home'
  get 'posts' => 'posts#home'
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show'
  post 'posts' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  patch 'posts/:id' => 'posts#update'
  delete 'posts/:id' => 'posts#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
