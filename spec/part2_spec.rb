require 'ruby.rb'

describe "#hello" do
  it "should be defined" do
    expect { hello("Testing") }.not_to raise_error()#::NoMethodError)
  end

  it "The hello method returns the correct string [10 points]" , points: 10 do
    expect(hello("Dan").class).to eq(String)
    expect(hello("Dan")).to eq('Hello, Dan'), "Incorrect results for input: \"Dan\""
    expect(hello("BILL")).to eq('Hello, BILL'), "Incorrect results for input: \"BILL\""
    expect(hello("Mr. Ilson")).to eq('Hello, Mr. Ilson'), "Incorrect results for input: \"Mr. Ilson\""
  end
end
