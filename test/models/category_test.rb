# == Schema Information
#
# Table name: categories
#
#  id             :integer          not null, primary key
#  description    :text
#  name           :string
#  products_count :integer          default(0)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
