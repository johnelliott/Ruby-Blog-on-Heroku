class Post < ActiveRecord::Base
  scope :draft, -> { where(draft_status: true)}
  scope :published, -> { where(draft_status: false)}
  scope :search, -> (q) { where('body LIKE ? OR subject LIKE ?', "%#{q}%", "%#{q}%")}
  validates :body, presence: true
end
