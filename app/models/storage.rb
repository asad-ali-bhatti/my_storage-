# == Schema Information
#
# Table name: storages
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  description       :text(65535)
#  parent_storage_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Storage < ApplicationRecord
  has_many   :child_storages, foreign_key: :parent_storage_id, class_name: 'Storage'
  belongs_to :parent_storage, class_name: 'Storage', optional: true
end
