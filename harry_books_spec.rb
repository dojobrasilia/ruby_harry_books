require './harry_books'

describe "HarryPotterBookShop" do
	it 'does not charge for no books' do
		shop = HarryPotterBookShop.new
		shop.buy(0).should == 0
	end

	it 'gives no discount for a single book' do
		shop = HarryPotterBookShop.new
		shop.buy(1).should == 42
	end
end