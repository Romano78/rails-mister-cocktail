class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!

  def index
    @cocktails = Cocktail.all
    @user = current_user if current_user
  end

  def show
    @dose = Dose.new
    @review = Review.new
    @user = current_user
  end

  def new
    @cocktail = Cocktail.new
    @user = current_user
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.user = current_user
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      @user = current_user
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
