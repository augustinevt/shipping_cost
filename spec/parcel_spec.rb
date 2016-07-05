require('rspec')
require('parcel')

describe('Parcel') do

  describe('Parcel#volume') do
    it('should return product of all sides of parcel') do
      new_parcel = Parcel.new(5, 5, 5, 30, "express")
      expect(new_parcel.volume()).to eq(125)
    end
  end

  describe('Parcel#cost_to_ship') do
    it('should return the cost of shipping based on express formula') do
      new_parcel = Parcel.new(9, 9, 8, 40, "express")
      expect(new_parcel.cost_to_ship()).to eq(45)
    end
    it('should return the cost of shipping based on reqular formula') do
      new_parcel = Parcel.new(9, 9, 8, 40, "regular")
      expect(new_parcel.cost_to_ship()).to eq(32)
    end
  end
end
