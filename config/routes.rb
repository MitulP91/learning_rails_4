Rails4Crud::Application.routes.draw do
  # Characters
  resources :characters
  post '/characters/:id/destroy' => 'characters#destroy', as: 'character_destroy'

  # Video Games
  resources :video_games
  post '/video_games/:id/destroy' => 'video_games#destroy', as: 'video_game_destroy'

  # Companies
  resources :companies
  post '/companies/:id/destroy' => 'companies#destroy', as: 'company_destroy'

  # Root to Homepage
  root :to => 'companies#index'
end
