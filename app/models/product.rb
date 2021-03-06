# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  description :text
#  price       :float
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer          not null
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#
# Foreign Keys
#
#  category_id  (category_id => categories.id)
#
class Product < ApplicationRecord
  belongs_to :category
  after_commit :update_count, on: [:create, :destroy]
  def short_title
    self.title[0..4]
  end

  def sale?
    true
  end
  def image
    "https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg"
  end

  private
  def update_count
    self.category.update(products_count:self.category.products.count)
  end
end
