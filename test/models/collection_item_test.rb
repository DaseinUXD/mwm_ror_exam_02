# == Schema Information
#
# Table name: collection_items
#
#  id         :bigint(8)        not null, primary key
#  attr_01    :string
#  attr_02    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#
# Indexes
#
#  index_collection_items_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

require 'test_helper'

class CollectionItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
