class User < ActiveRecord::Base
  acts_as_decorables

  belongs_to :company

  has_many :badge_users
  has_many :badges, through: :badge_users

  has_many :video_users
  has_many :videos, through: :video_users

  def to_s
    name
  end

  def watch_video video
    videos << video
  end

  def watched? video
    videos.include? video
  end
  def self.get_user_ids(company_id)
    user_ids = self.select('id').where(company_id: company_id)
    BadgeUser.get_badge_ids(user_ids)
  end
end
