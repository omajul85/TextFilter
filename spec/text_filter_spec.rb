require "text_filter"

describe "The function text_filter" do
	
	it "returns an empty string if input is empty string" do
		expect(text_filter("")).to eq ""
	end

	it "replaces vowels of banned words with case insensitive checking" do
		expect(text_filter("The house is GrEeN and RED")).to eq "The house is Gr--N and R-D"
	end

	it "accepts a string and an array of banned words" do
		expect(text_filter("The house is GrEeN and RED", ["house"])).to eq "The h--s- is GrEeN and RED"		
	end

	it "returns the input string keeping the special characters" do
		str = "Is the colombian flag yellow, blue and red?"
		expect(text_filter(str)).to eq "Is the colombian flag y-ll-w, bl-- and r-d?"
		expect(text_filter("How are you?", ["ARE"])).to eq "How -r- you?"
	end

	it "does not alter words that contain part of banned words" do
		str = "Let's go to evergreen *forest* to listen to blues music!"
		expect(text_filter(str)).to eq str
	end

end