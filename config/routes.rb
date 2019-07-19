Rails.application.routes.draw do
  root to: 'search#index'
  post 'search/index'
end
