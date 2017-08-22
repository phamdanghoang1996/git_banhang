class HomesController < ApplicationController
  before_action :loadheader
  def loadheader
      @categories = Typeproduct.all
  end
  def index
  end
  def show
    @products = Product.where(typeproducts_id: params[:id])

  end

end
