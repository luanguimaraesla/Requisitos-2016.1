class ClientsController < ApplicationController
  def show
    @client = Client.find(params[:id])
    @orders_counter = @client.orders.count
  end

  def my_orders
    @client = Client.find(params[:id])
    @orders = @client.orders
  end
end
