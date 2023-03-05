Rails.application.routes.draw do
  root 'schedule_management_app#home'
  get 'schedule_management_app/home'
  get 'schedule_management_app/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
