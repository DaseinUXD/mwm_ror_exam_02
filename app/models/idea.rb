# == Schema Information
#
# Table name: ideas
#
#  id         :bigint(8)        not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#
# Indexes
#
#  index_ideas_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Idea < ApplicationRecord
  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  validates :content, presence: true, length: {minimum: 5}
end
