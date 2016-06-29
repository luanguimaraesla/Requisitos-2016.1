class AdminsController < ApplicationController
  def show
    @admin = Admin.find(params[:id])
    @counters = {
      products: Product.count,
      services: Service.count,
      clients:   Client.count
    }
  end

  def show_clients
    @clients = Client.all
  end

  def show_products
    @products = Product.all
  end

  def show_services
    @services = Service.all
  end
end

