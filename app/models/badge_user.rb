class BadgeUser < ActiveRecord::Base
  belongs_to :badge
  belongs_to :user
  
  def self.get_badge_ids(user_ids)
    badge_ids = self.select('badge_id').where(user_id: user_ids)
    Badge.get_badges(badge_ids)
  end
end
