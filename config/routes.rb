Rails.application.routes.draw do
  resources :appointments do
    member do
      get :flop
    end
  end
  resources :categories

  devise_for :doctors, path: 'doctors', controllers: { sessions: "doctors/sessions" }
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions" }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'public#main'

  devise_scope :user do
  get 'patient/profile/:id' => 'users/sessions#profile', as: :profile
  end
  devise_scope :doctor do
  get 'doctor/profile/:id' => 'doctors/sessions#profile', as: :doctor_profile
  end


end
