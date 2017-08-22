class CategoriesController < ApplicationController
  before_action :loadheader
  def loadheader
    @categories = Typeproduct.all
  end
  def index
  end
  def show
    @products = Product.find(params[:id])
  end
end
