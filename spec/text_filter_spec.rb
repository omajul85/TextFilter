describe "text filter" do
	it "returns 'r-d' when input string is 'red'" do
		expect(text_filter('red')).to eq "r-d"
	end
end