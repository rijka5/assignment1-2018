require 'ruby.rb'

describe 'Ruby assignment part 1' do

  describe "#sum" do
    it "should be defined" do
      expect { sum([1,3,4]) }.not_to raise_error
    end

    it "returns correct sum [13 points]" , points: 13 do
      expect(sum([1,2,3,4,5])).to be_a_kind_of Integer
      expect(sum([1,2,3,4,5])).to eq(15)
      expect(sum([1,2,3,4,-5])).to eq(5)
      expect(sum([1,2,3,4,-5,5,-100])).to eq(-90)
    end

    it "works on the empty array [7 points]" , points: 7 do
      expect { sum([]) }.not_to raise_error
      expect(sum([])).to be_zero
    end
  end

  describe "#max_2_sum" do
    it "should be defined" do
      expect { max_2_sum([1,2,3]) }.not_to raise_error
    end
    it "returns the correct sum [7 points]" , points: 7 do
      expect(max_2_sum([1,2,3,4,5])).to be_a_kind_of Integer
      expect(max_2_sum([1,-2,-3,-4,-5])).to eq(-1)
    end
    it 'works even if 2 largest values are the same [4 points]' , points: 4 do
      expect(max_2_sum([1,2,3,3])).to eq(6)
    end
    it "returns zero if array is empty [5 points]" , points: 5 do
      expect(max_2_sum([])).to be_zero
    end
    it "returns value of the element if just one element [5 points]" , points: 5 do
      expect(max_2_sum([3])).to eq(3)
    end
  end
end
