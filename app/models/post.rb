class Post < ActiveRecord::Base
  scope :draft, -> { where(draft_status: false)}
  scope :published, -> { where(draft_status: true)}
  scope :search, ->(q) { where('body LIKE ? OR subject LIKE ?', params[:q], params[:q]).published}
  validates :body, presence: true
end
