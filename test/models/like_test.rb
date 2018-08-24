# == Schema Information
#
# Table name: likes
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  idea_id    :bigint(8)
#  user_id    :bigint(8)
#
# Indexes
#
#  index_likes_on_idea_id  (idea_id)
#  index_likes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (idea_id => ideas.id)
#  fk_rails_...  (user_id => users.id)
#

require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
