class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      flash[:notice] = "Added client."
      redirect_to clients_path
    else
      flash[:notice] = "Unable to add client."
      render :new
    end
  end

  def edit
   @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
      if @client.update_attributes(client_params)
        # redirect_to(:action => 'show', :id => @client.id) 
        # flash[:notice] = "Client updated."
          redirect_to clients_path
      else
        render :edit
      end
  end

  def destroy
    Client.find(params[:id]).destroy
    flash[:notice] = "Removed client."
    redirect_to clients_path
  end

  private
  def client_params
    params[:client].permit(:first_name, :last_name, :email, :telephone)
  end
end