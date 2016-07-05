class Parcel
  define_method(:initialize) do |length, width, height, weight, speed|
    @length = length.to_i
    @width = width.to_i
    @height = height.to_i
    @weight = weight.to_i
    @speed = speed
  end

  define_method(:volume) do
    @length * @width * @height
  end

  define_method(:cost_to_ship) do

    if @speed == "express"
      ((volume() + @weight) * 0.0654).ceil()
    else
      ((volume() + @weight) * 0.0454).ceil()
    end

  end

end
