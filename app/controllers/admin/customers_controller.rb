class Admin::CustomersController < ApplicationController
   before_action :authenticate_admin!

  def index
  	@customer = Customer.page(params[:page]).per(10)
  end
  
  def edit
  	@customer = Customer.find(params[:id])
  end

  def update
  	@customer = Customer.find(params[:id])
  	if @customer.update(customer_params)
  		redirect_to admin_customer_path(@customer)
  	else
  		render "edit"
  	end
  end

  def show
     @customer = Customer.find(params[:id])
  end

  private

  def customer_params
  	params.require(:customer).permit(:email, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code,:address, :telephone_number, :is_deleted)
  end
end
