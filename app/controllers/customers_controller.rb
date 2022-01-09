class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.create(customer_params)

    if @customer.save
      redirect_to customers_path, notice: 'Customer registered with success!'
    else
      render :new
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:id, :name, :email, :smoker, :phone, :avatar)
  end
end