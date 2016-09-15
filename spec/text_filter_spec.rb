require "text_filter"

describe "The function text_filter" do
	
	str = "The house is GrEeN and RED"

	it "returns an empty string if input is empty string" do
		expect(text_filter("")).to eq ""
	end

	it "replaces vowels of banned words with case insensitive checking" do
		expect(text_filter(str)).to eq "The house is Gr--N and R-D"
	end

	it "accepts a string and an array of banned words" do
		expect(text_filter(str, ["house"])).to eq "The h--s- is GrEeN and RED"		
	end

end