Rails.application.routes.draw do
  root to: 'search#index'
  post '', to: 'search#index'
end
