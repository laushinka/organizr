Rails.application.routes.draw do
  get 'activities/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'activities#index'
end
