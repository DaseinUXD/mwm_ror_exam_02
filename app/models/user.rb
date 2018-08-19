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

class User < ApplicationRecord
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  has_secure_password

  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  validates :email, presence: true, uniqueness: {case_sensitive: false},
            format: {with: EMAIL_REGEX}
  before_save :downcase_email
  after_create :cx_success

  private
  def downcase_email
    self.email.downcase!
  end

  def cx_success
    puts "Successfully created a new user"
  end

end
