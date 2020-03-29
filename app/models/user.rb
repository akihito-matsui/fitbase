class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :gender, presence: true, length: { maximum: 10 }
  validates :age, presence: true, length: { maximum: 3 }
  validates :resident, presence: true, length: { maximum: 32 }
  validates :birthplace, presence: true, length: { maximum: 32 }
  validates :training_place, presence: true, length: { maximum: 32 }
  validates :frequency, presence: true, length: { maximum: 20 }
  validates :objective, presence: true, length: { maximum: 50 }
  validates :protein_supplement, presence: true, length: { maximum: 50 }
  validates :music, presence: true, length: { maximum: 50 }
  validates :speakout, presence: true, length: { maximum: 32 }
  validates :message, presence: true, length: { maximum: 255 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  
  mount_uploader :profile_picture, ProfilePictureUploader
end
