class Api::OrdersController < ApplicationController
  def show
    order_id = params[:id]
    response = Unirest.get("http://localhost:3000/api/orders/#{order_id}")
      @order = response.body
      render 'show.html.erb'

  def new

    render 'new.html.erb'
  end

  def create
    client_params = {
                    product_id: params[:product_id]
                    quantity: params[:quantity]
                    }

    response = Unirest.post(
                           "http://localhost:3000/api/orders",
                           parameters: client_params
                          )

    @order = response.body
    flash[:success] = "Successfully created Order"
    redirect_to "/client/orders/#{ order['id'] }"
  end

  end


end
