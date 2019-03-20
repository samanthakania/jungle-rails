class Admin::CategoriesController < ApplicationController
  def index
      @categories = Categories.order(id: :desc).all
    end

    def new
      @product = Categories.new
    end

    def create
      @product = Categories.new(product_params)

      if @product.save
        redirect_to [:admin, :products], notice: 'Category created!'
      else
        render :new
      end
    end

end
