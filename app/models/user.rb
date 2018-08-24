# == Schema Information
#
# Table name: users
#
#  id                    :bigint(8)        not null, primary key
#  alias                 :string
#  email                 :string
#  name                  :string
#  password_confirmation :string
#  password_digest       :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class User < ApplicationRecord
  EMAIL_REGEX    = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  ALPHA_ONLY_REGEX    = /\A[-a-z ']+\Z/i
  STRICT_PASSWORD_REGEX = /\A(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[^\w\d\s:])([^\s]){8,16}\Z/i
  has_secure_password
  has_many :ideas, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_ideas, through: :likes, source: :ideas

  validates :name, :alias, presence: true, length: { in: 2..20 }, format: {with: ALPHA_ONLY_REGEX, message: 'may contain only letters'}
  validates :alias, uniqueness: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: EMAIL_REGEX}
  validates :password, presence: true, length: { minimum: 8 } #format: {with: STRICT_PASSWORD_REGEX}

  before_save :downcase_input
  after_create :cx_success

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  private

  def downcase_input
    self.email.downcase!
    self.alias.downcase!
  end

  def cx_success
    puts "Msg from user.rb: Successfully created a new user"
  end

end
