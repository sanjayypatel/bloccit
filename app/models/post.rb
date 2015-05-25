class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  
  # Replacing a default_scope of reveresed created_at order with two more, specific scopes
  # default_scope { order('created_at DESC')}
  scope :ordered_by_title, -> { order(title: :asc) }
  scope :ordered_by_reverse_created_at, -> { order(created_at: :desc)}

end
