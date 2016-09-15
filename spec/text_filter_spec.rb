require "text_filter"

describe "text filter" do
	
	str1 = "The house is green and red"
	str2 = "The colombian flag contains YeLLOw, rEd and bLUe"

	it "returns 'r-d' when input string is 'red'" do
		expect(text_filter('red')).to eq "r-d"
	end

	it "returns 'gr--n when input string is 'green'" do
		expect(text_filter('green')).to eq "gr--n"
	end

	it "replaces vowels of banned words" do
		expect(text_filter(str1)).to eq "The house is gr--n and r-d"
	end
end