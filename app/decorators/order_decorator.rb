class OrderDecorator < SimpleDelegator

  def description
    description = line_items.map do |line_item|
      "#{line_item.product.name} x #{line_item.quantity}"
    end
    description.join(", ")
  end

end
