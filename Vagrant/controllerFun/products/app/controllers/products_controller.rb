class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def new
        #display a form for creating product
    end

    def create 
        # puts params[:product]
        Product.create(product_params)
        redirect_to '/products'
    end

    private
        def product_params
            params.require(:product).permit(:name,:price)
        end
    
end
