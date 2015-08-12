Rails.application.routes.draw do


  root 'welcome#index'

  resources :posts

  get '/portfolio' => 'portfolio_pieces#index'

  get '/portfolio/:id' => 'portfolio_pieces#show'

  get '/portfolio_pieces/:id' => 'portfolio_pieces#show'

  get 'about' => 'about#index'

  get '/contact' => 'contact#index'

  post '/inquiries' => 'inquiries#create'

  get '/inquiries' => 'inquiries#index'

  get "/auth/:provider/callback" => 'sessions#create'

  get "/sessions/destroy" => 'sessions#destroy'

end
