require 'ruby.rb'

describe "BookInStock" do
  it "should be defined" do
    expect { BookInStock }.not_to raise_error
  end

  describe 'getters and setters' do
    before(:each)  { @book = BookInStock.new('isbn1', 33.8) }
    it 'should set ISBN [7 points]' , points: 7 do
      expect(@book.isbn).to eq('isbn1')
    end
    it 'should set price [7 points]' , points: 7 do
      expect(@book.price).to eq(33.8)
    end
    it 'should be able to change ISBN [7 points]' , points: 7 do
      @book.isbn = 'isbn2'
      expect(@book.isbn).to eq('isbn2')
    end
    it 'should be able to change price [7 points]' , points: 7 do
      @book.price = 300.0
      expect(@book.price).to eq(300.0)
    end
  end
  describe '#format_isbn' do
    it "should be defined" do
      expect(BookInStock.new('isbn1', 10)).to respond_to(:format_isbn)
    end
    it 'should display "isbn1" as "ISBN1" [7 points]' , points: 7 do
      expect(BookInStock.new('isbn1', 33.95).format_isbn).to eq('ISBN1')
    end
    it 'should display " isbn1 " as "ISBN1" [7 points]' , points: 7 do
      expect(BookInStock.new(' isbn1 ', 33.95).format_isbn).to eq('ISBN1')
    end
    it 'should display " Isbn1" as "ISBN1" [7 points]' , points: 7 do
      expect(BookInStock.new(' Isbn1', 33.95).format_isbn).to eq('ISBN1')
    end
  end
  
end
