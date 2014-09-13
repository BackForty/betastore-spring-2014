require 'rails_helper'

RSpec.describe Product, :type => :model do

  context '.incredible' do
    let!(:incredible_product) { FactoryGirl.create(:product, name: 'Incredible product') }
    let!(:boring_product) { FactoryGirl.create(:product, name: 'Boring product') }
    let!(:another_incredible_product) { FactoryGirl.create(:product, name: 'An incredible product') }

    it "returns products with 'Incredible' in their name" do
      products = Product.incredible
      expect(products).to eq([incredible_product, another_incredible_product])
    end

    it "doesn't return 'Boring product'" do
      expect(Product.incredible).not_to include(boring_product)
    end
  end

  context '.cheap' do
    let!(:cheap_product) { FactoryGirl.create(:product, price: 10) }
    let!(:expensive_product) { FactoryGirl.create(:product, price: 100) }
    let!(:unsure_product) { FactoryGirl.create(:product, price: 50) }

    it "returns products less than $50" do
      expect(Product.cheap).to eq([cheap_product])
    end
  end

end
