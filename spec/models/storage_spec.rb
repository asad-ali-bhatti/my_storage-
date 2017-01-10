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

require 'rails_helper'

RSpec.describe Storage, type: :model do

  subject { create(:storage) }

  it { should respond_to :name }
  it { should respond_to :description }

  it { should belong_to   :parent_storage }
  it { should have_many(:child_storages).with_foreign_key(:parent_storage_id) }
  it { should have_many(:items) }

  it 'should have multiple child storages' do
    create(:storage, parent_storage: subject)
    create(:storage, parent_storage: subject)

    expect(subject.child_storages.length).to eq(2)
  end
end
