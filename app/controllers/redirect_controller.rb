class RedirectController < ApplicationController
  def index
    #render :text=> params.inspect
    @products=Product.find(:first, :conditions =>["name like ?","#{params[:path].first}%"] )
    redirect_to product_path(@products)
  end

end
