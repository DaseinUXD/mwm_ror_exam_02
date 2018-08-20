# == Schema Information
#
# Table name: items
#
#  id         :bigint(8)        not null, primary key
#  info       :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#
# Indexes
#
#  index_items_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Item < ApplicationRecord
  belongs_to :user

  validates :name, :info, :user_id, presence: true
  validates :name, length: { in: 2..20 }
  validates :info, length: { minimum: 5 }

  after_create :cx_success

  private

  def cx_success
    puts "Successfully created a new item"
  end

end
