class User < ActiveRecord::Base
  has_many :posts
  before_create { self.remember_token = new_remember_token }

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { in: 4..20 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /@/},
                    uniqueness: { case_sensitive: false }

  has_secure_password

  private

    def new_remember_token
      Digest::SHA1.hexdigest(SecureRandom.urlsafe_base64.to_s)
    end
end
