class Post < ActiveRecord::Base
  scope :draft, -> { where(draft_status: false)}
  scope :published, -> { where(draft_status: true)}
  validates :body, presence: true
end
