Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  
  devise_for :users, controllers: {
      sessions: 'public/users/sessions',
      passwords: 'public/users/passwords',
      registrations: 'public/users/registrations'
  }
    scope module: :public do
      resources :users, only: [:index, :show, :edit, :update]
      get 'schedules/month_index' => 'schedules#month_index'
      get 'schedules/week_index' => 'schedules#week_index'
      resources :schedules, except: [:index]
    end
    root 'homes#top'
    get 'homes/about'
end
