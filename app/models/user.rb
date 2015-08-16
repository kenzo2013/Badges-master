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
  
  def self.link_automatically_badge_to_user_with_conditions(user_id)
      Badge.all.each do |b|
        if VideoUser.user_has_viewed_only_first_and_last_videos(user_id)
          BadgeUser.create(badge_id: b.id, user_id: user_id)
        elsif VideoUser.user_has_viewed_only_rubymethods_video(user_id)
           BadgeUser.create(badge_id: b.id, user_id: user_id)
        else
          if VideoUser.user_has_viewed_only_last_video(user_id)
            BadgeUser.create(badge_id: b.id, user_id: user_id)
           end
        end
      end
  end
end
