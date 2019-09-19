class CocktailsController < ApplicationController

  def new
     @cocktail = Cocktail.new
  end

  def create
   @cocktail = Cocktail.new(set_params)
   if @cocktail.save
    redirect_to @cocktail, notice: 'The Cocktail was successfully created.'
    else
      render :new
    end
  end

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  # def edit
  #   @cocktail = Cocktail.find(params[:id])

  # end

  # def update
  # end

private

  def set_params
    params.require(:cocktail).permit(:name)
  end

end
