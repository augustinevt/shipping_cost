class Parcel
  define_method(:initialize) do |length, width, height, weight, speed|
    @length = length
    @width = width
    @height = height
    @weight = weight
    @speed = speed
  end

  define_method(:volume) do
    @length * @width * @height
  end

end
