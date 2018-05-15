Rails.application.routes.draw do
  get '/' => 'client/products#index'
  namespace :client do
    get '/products' => 'products#all_products'
    get '/products/:id' => 'products#show'
    post '/products' => 'products#update'
    get '/products/:id' => 'products#show'
    get '/products/:id/edt' => 'products#edit'
    patch '/products/:id' => 'recipes#update'
    delete '/recipe/:id' => 'recipes#destroy'
  end
end
