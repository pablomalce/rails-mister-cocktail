class DosesController < ApplicationController


  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose  = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktails_path(@cocktail)
    else
      render :new
    end
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

   def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    # no need for app/vie dose/destroy.html.erb
    redirect_to cocktail_path(params[:cocktail_id])
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end

