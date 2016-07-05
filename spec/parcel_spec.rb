require('rspec')
require('parcel')

describe('Parcel') do

  describe('Parcel#volume') do
    it('should return product of all sides of parcel') do
      new_parcel = Parcel.new(5, 5, 5, 30, "express")
      expect(new_parcel.volume()).to eq(125)
    end
  end

end
