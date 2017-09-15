class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
  validates :content, presence: true, length: { maximum: 300 }

  belongs_to :user, optional: true

  default_scope { order(created_at: :desc) }

  mount_uploader :picture, PictureUploader

  def increase_visit
    self.counter += 1
    self.save!
  end
end
