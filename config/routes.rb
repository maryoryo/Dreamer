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
      resources :big_goals, except: [:index]
      resources :medium_goals, except: [:index]
      resources :small_goals, except: [:index]
      resources :look_backs, except: [:index]
      resources :inquiries, only: [:new, :create]
      post 'inquiries/confirm' => 'inquiries#confirm'
      post 'inquiries/back' => 'inquiries#back'
      get 'inquiries/done' => 'inquiries#done'
    end
    root 'homes#top'
    get 'homes/about'
end
