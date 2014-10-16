class Post < ActiveRecord::Base
  scope :draft, -> { where(draft_status: false)}
  scope :published, -> { where(draft_status: true)}
  scope :search, -> { where('body OR subject LIKE ?', params[:q]).published}
  validates :body, presence: true
end
