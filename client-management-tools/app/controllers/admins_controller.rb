class AdminsController < ApplicationController
  def show
    @admin = Admin.find(params[:id])
  end

  def show_clients
    @clients = Client.all
  end

  def show_products
    @clients = Product.all
  end

  def show_services
    @clients = Service.all
  end
end

