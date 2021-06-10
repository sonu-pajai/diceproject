class DiceFacade

  def generate_die_roll(sides)
    rand(1..sides.to_i)
  end

  def roll(sides)
    total = 0
    dice_data = []
    sides.each do |_, no_sides|
      dice_val = generate_die_roll(no_sides)
      dice_data << {dice_val: dice_val, sides: no_sides}
      total += dice_val
    end
    return dice_data, total
  end
end