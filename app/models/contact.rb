class Contact < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('last_name ASC') }
  validates :last_name, presence: true
  validates :user_id, presence: true
end
