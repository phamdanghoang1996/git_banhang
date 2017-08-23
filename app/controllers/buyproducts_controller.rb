class BuyproductsController < ApplicationController
  before_action :loadheader
  def loadheader
    @categories = Typeproduct.all
  end
  def index
    @products = Product.find(params[:id])
  end
  def create
    save_customer = Customer.new(set_value_custommer)
    save_customer.save
    save_order = Order.new(:day_order=>'2001-02-04 00:00:00',:day_recieve=>'2001-02-04 00:00:00')
    save_order.save
  #  save_detail_order = Detail_order.new(quantity_buy: 10, total: 20000)

  #  save_detail_order.save
#    if save_customer.save
#      flash[:notice] = 'Tiếp nhận đơn hàng thành công'
#    else
#      redirect_to :back
#      flash[:notice] = 'Gặp lỗi trong quá trình tiếp nhận'
#    end
  end
  private
  def set_value_custommer
    @customer = params.require(:customer).permit(:name,:email,:phonenumber,:address)
  end
end
