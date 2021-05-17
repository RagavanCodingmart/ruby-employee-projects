Rails.application.routes.draw do
  resources :assigned_projects
  resources :projects
  resources :employees
  # get 'home/index'
  get 'home/about'
  root 'employees#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
