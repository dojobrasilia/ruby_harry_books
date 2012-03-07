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

	it 'gives 5% of discount for two books' do
		shop = HarryPotterBookShop.new
		shop.buy(2).should == (2*42)*(1 - 0.05)
	end

	it 'gives 10% of discount for three books' do
		shop = HarryPotterBookShop.new
		shop.buy(3).should == (3*42)*(1 - 0.1)
	end
end