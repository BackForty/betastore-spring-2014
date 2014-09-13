class OrderPresenter

  attr_reader :order

  def initialize(order)
    @order = order
  end

  def description
    line_items = @order.line_items
    description = line_items.map do |line_item|
      "#{line_item.product.name} x #{line_item.quantity}"
    end
    description.join(", ")
  end

end
