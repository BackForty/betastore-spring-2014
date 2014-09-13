require 'rails_helper'

feature "User views available products", :type => :feature do

  before do
    3.times { FactoryGirl.create(:product) }
    visit products_path
  end

  it "lists all the products in the app" do
    Product.all.each do |product|
      expect(page).to have_content(product.name)
    end
  end

  it "lets me view an individual product" do
    click_link Product.first.name
  end

end
