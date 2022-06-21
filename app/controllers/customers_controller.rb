class CustomersController < ApplicationController
  before_action :set_customer,only:[:edit,:update]

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to authenticated_path,notice:"cliente creado correctamente"
    else
      redirect_to authenticated_path,alert:"no se ha podido crear el cliente"
    end
  end

  def new
    @customer = Customer.new
  end

  def edit
  end

  def update
    if @customer.update(customer_params)
      redirect_to authenticated_path,notice:"cliente actualizado correctamente"
    else
      redirect_to authenticated_path,alert:"no se ha podido actualizar el cliente"
    end
  end
  
  private
  
  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name,:rfc,:telephone_number)
  end
end
