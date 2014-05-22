class Contact < ActiveRecord::Base
  belongs_to :user
  has_many :phones
  has_many :addresses
  default_scope -> { order('last_name ASC') }
  validates :last_name, presence: true
  validates :user_id, presence: true


  def self.search(search)
    if search
      search_condition = "%" + search + "%"
        find(:all, :conditions => ['first_name LIKE ? OR last_name LIKE ?', search_condition, search_condition])
      else
        find(:all, :conditions => ['user_id = ?', User])
      end
  end
end
