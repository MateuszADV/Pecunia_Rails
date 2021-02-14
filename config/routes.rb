Rails.application.routes.draw do

  
  get 'note_for_sell/index'
  resources :reports
  # get 'home/index'
  root 'home#index'
  get 'home/about'

  get 'currencies/new/country/currency'

  resources :countries
  resources :currencies
  resources :notes

  resources :countries do
    resources :currencies
  end

  resources :currencies do
    resources :notes
  end  
  
  # resources :currencies do
  #   resources :notes
  # end

  mount ReportsKit::Engine, at: '/'
  
end
