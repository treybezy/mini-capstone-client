class Client::ProductsController < ApplicationController
 def create
    client_params = {
                    name: params[:name],
                    price: params[:price],
                    description: params[:description],
                    image_url: params[:image_url],
                    attack_bonus: params[:attack_bonus],
                    str_bonus: params[:str_bonus]
                    }

    response = Unirest.post(
                           "http://localhost:3000/api/products",
                           parameters: client_params
                          )

    product = response.body
    redirect_to "/client/products/#{ product["id"] }"
  end
end
