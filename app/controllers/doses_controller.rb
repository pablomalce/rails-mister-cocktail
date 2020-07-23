class DosesController < ApplicationController


  def create
    @cocktail = Cocktail.find(:cocktail_id)
    @dose  = Dose.new(dose_params)
    @dose.cocktail_id = @cocktail
    if @dose.save
      redirect_to (cocktail_doses_path)
    else
      render :new
    end
  end

  def new
    @cocktail = Cocktail.find[:cocktail_id]
    @dose = Dose.new
  end

   def destroy
    @dose = Dose.find(params[:id])
    dose.destroy

    # no need for app/vie dose/destroy.html.erb
    redirect_to cocktail_doses_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id)
  end

end

