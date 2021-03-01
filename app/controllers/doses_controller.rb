class DosesController < ApplicationController
  # def new
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  #   @dose = Dose.new
  # end

  def create
    @dose = Dose.new(dose_param)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      @review = Review.new
      render 'cocktails/show'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])

    @dose.delete

    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_param
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
