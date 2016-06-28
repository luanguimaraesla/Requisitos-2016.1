class AdminsController < ApplicationController
  def show
    @admin = Admin.find(params[:id])
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

