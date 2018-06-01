Rails.application.routes.draw do
get '/' => 'client/products#index'

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  get '/' => 'client/products#index'
  namespace :client do
    get '/products' => 'products#index'
    get '/products/:id' => 'products#show'
    post '/products' => 'products#update'
    get '/products/:id' => 'products#show'
    get '/products/:id/edit' => 'products#edit'
    patch '/products/:id' => 'recipes#update'
    delete '/recipe/:id' => 'recipes#destroy'

    post '/orders' => 'orders#create'
    get '/orders/:id' => 'orders#show'

    
    post 'carted_products' => 'carted_products#create'
    get '/carted_products' => 'carted_products#index'
  end
end
