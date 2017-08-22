class BuyproductsController < ApplicationController
  before_action :loadheader
  def loadheader
    @categories = Typeproduct.all
  end
  def index
    @products = Product.find(params[:id])
  end
  def create
    @save_customer = Customer.new(set_value)
    if @save_customer.save
      flash[:notice] = 'Tiếp nhận đơn hàng thành công'
    else
      redirect_to :back
      flash[:notice] = 'Gặp lỗi trong quá trình tiếp nhận'
    end
  end
  private
  def set_value
    @customer = params.require(:customer).permit(:name,:email,:phonenumber,:address)
  end
end
