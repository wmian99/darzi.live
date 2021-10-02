class CustomersController < ApplicationController
  before_action :authenticate_user!, except:[:index]

  def index
    @customers = Customer.all
    respond_to do |format|
      format.html
      format.json { render json: @customers}
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save && (customer_params[:password] == customer_params[:confirm_password])
      redirect_to customers_path
    else
      render :new
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])

    if @customer.update(customer_params)
      redirect_to @customer
     else
      render :edit
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    redirect_to customers_path
  end

  private

  def customer_params
    params.require(:customer).permit(:fname,:lname,:phone,:email,:password,:confirm_password,:address, :image)
  end
end
