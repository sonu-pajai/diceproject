class DiceController < ApplicationController

  def new
  end

  def compute
    @dice_data, @total= DiceFacade.new.roll(params[:sides])
  end

end
