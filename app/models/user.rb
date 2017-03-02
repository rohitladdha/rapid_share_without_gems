class User < ActiveRecord::Base
  has_many :docs, dependent: :destroy
  has_secure_password

  validates :email, uniqueness: true, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, length: {:within => 6..40}, presence: true

end