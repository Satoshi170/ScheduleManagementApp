Rails.application.routes.draw do
  get "/" => "posts#home"
  get "home" => "posts#home"
  get "new" => "posts#new"
  get "create" => "posts#create"
  get ":id/show" => "posts#show"
  get ":id/edit" => "posts#edit"
  get ":id/destroy" => "posts#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
