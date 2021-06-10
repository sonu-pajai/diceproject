require 'rails_helper'

RSpec.describe 'DiceFacade' do
  it 'should dice value with total' do
    params = { sides: {"0": 6, "1": 20} }

    dice_data, total = DiceFacade.new.roll(params[:sides])

    expect(dice_data.first[:dice_val]).to be <= 6
    expect(dice_data.last[:dice_val]).to be <= 20
    expect(dice_data[0][:dice_val]+dice_data[1][:dice_val]).to eq(total)
  end
end