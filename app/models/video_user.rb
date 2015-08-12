class VideoUser < ActiveRecord::Base
  belongs_to :video
  belongs_to :user
  
  def self.user_has_viewed_only_first_and_last_videos(user_id)
     self.where(user_id: user_id).where(video_id: [1, Video.last.id])
  end
  
  def self.user_has_viewed_only_rubymethods_video(user_id)
    self.where(user_id: user_id).where(video_id: 3)
  end
  
  def self.user_has_viewed_only_last_video(user_id)
    self.where(user_id: user_id).where(video_id: Video.last.id)
  end
  
end
