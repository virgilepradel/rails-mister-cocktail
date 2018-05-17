class CocktailsController < ApplicationController
  def create
    @cocktail = Cocktail.new(params_cocktails)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def index
    @cocktails = Cocktail.all
  end

  private

  def params_cocktails
    params.require(:cocktail).permit(:name)
  end
end
