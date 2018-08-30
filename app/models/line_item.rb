class LineItem < ApplicationRecord
  belongs_to :kitten
  belongs_to :cart

  def total_price
    kitten.price.to_i * quantity.to_i
  end
end
