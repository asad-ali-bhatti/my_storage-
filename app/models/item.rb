# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  storage_id :integer
#  item_type  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Item < ApplicationRecord
end
