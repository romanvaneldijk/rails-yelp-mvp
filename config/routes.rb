Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :show, :create, :new] do
    resources :reviews, except: [ :destroy, :update, :edit, :new, :show ]
  end
end
