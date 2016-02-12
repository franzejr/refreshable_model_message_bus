Rails.application.routes.draw do
  resources :posts
  get 'refresh_screen' => 'posts#refresh_screen'
end
