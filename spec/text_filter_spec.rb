require "text_filter"

describe "text filter" do
	it "returns 'r-d' when input string is 'red'" do
		expect(text_filter('red')).to eq "r-d"
	end

	it "returns 'gr--n when input string is 'green'" do
		expect(text_filter('green')).to eq "gr--n"
	end
end