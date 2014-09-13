require 'test_helper'

class ProductsTest < ActionDispatch::IntegrationTest

  def test_products
    visit "/"
    assert page.has_content?('Hat')
    refute page.has_content?('Coat')
  end

end
