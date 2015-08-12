class Badge < ActiveRecord::Base
  has_many :badge_users
  has_many :users, through: :badge_users
  
  def self.get_badges(badge_ids)
    self.where(id: badge_ids)
  end
end
