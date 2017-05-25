class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  private
  def strong_params
    params.require(:client).permit(:name, :address, :photo)
  end

  def find_client
    @client = Client.find(params[:id])
  end
end
