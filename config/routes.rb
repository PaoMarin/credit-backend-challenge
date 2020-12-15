Rails.application.routes.draw do

  get 'welcome/index'

  resources :clients

  root to: "clients#index"
 end

