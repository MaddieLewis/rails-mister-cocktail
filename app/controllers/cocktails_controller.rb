class CocktailsController < ApplicationController
  # before_action :set_cocktail, only: [:show, ]
  @image_urls = %w[https://images.pexels.com/photos/53025/pexels-photo-53025.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260 https://images.pexels.com/photos/613037/pexels-photo-613037.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260 https://images.pexels.com/photos/1189260/pexels-photo-1189260.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260]
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
