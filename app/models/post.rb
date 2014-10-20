class Post < ActiveRecord::Base
  scope :draft, -> { where(draft_status: true)}
  scope :published, -> { where(draft_status: false)}
  scope :search, -> (search_query) { where('body LIKE :query_string OR subject LIKE :query_string', query_string: "%#{search_query}%") }
  validates :body, presence: true

  # def self.search(foo)
  #   where('body LIKE ? OR subject LIKE ?', "%#{foo}%", "%#{foo}%")
  # end

  # def self.published
  #   where(draft_status: false)
  # end
end
