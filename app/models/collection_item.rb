class CollectionItem < ApplicationRecord
  belongs_to :user
  validates :attr_01, :attr_02, presence: true
end
