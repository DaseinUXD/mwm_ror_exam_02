# == Schema Information
#
# Table name: users
#
#  id                    :bigint(8)        not null, primary key
#  first_name            :string
#  last_name             :string
#  email                 :string
#  password_digest       :string
#  password_confirmation :string
#  alias                 :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
