class Post < ActiveRecord::Base
  scope :draft, -> { where(draft_status: true)}
  scope :published, -> { where(draft_status: false)}
  scope :search, ->(q) { where('body ILIKE ? OR subject ILIKE ?', params[:q], params[:q]).published}
  validates :body, presence: true
end
