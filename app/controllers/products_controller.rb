class ProductsController < ApplicationController
    def index
        @category = Category.find(params[:category_id])
        @products = @category.products.include(:variants).order(:title)
    end
end
