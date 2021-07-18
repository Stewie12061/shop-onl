# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  bod        :integer
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Customer < ApplicationRecord
  def age
    Date.today.year-self.bod
  end
end
