Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'welcome#index'
  get   '/subscriptions' => 'subscriptions#index'
  get   '/subscriptions/new' => 'subscriptions#new'
  post  '/subscriptions/create' => 'subscriptions#create'
  get   '/subscriptions/:id' => 'subscriptions#show'
  post  '/subscriptions/:id/update' => 'subscriptions#update'
  get   '/subscriptions/:id/edit' => 'subscriptions#edit'
  get   '/subscriptions/:id/destroy' => 'subscriptions#destroy'
end
