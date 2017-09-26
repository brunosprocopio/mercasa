class ProductsController < ApplicationController
   def new
    @product = Product.new
   end

   def create
    @product = Product.new(product_params)
    @product.sub_category = SubCategory.find(@product.sub_category_id)
    if @product.save
      redirect_to @product, notice: 'Produto cadastrado com sucesso!'
    else
      render action: :new
    end
   end

   def show
    @product = Product.find(params[:id])
   end

   def edit
    @product = Product.find(params[:id])
   end

   def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    @product.sub_category = SubCategory.find(@product.sub_category_id)
    if @product.save
      redirect_to @product, notice: 'Cadastro atualizado com sucesso!'
    else
      render action: :edit
    end
   end

  private
  def product_params
    params.
      require(:product).
        permit(:name, :sub_category_id, :producer)
  end
end
