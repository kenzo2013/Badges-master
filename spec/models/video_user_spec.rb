require 'rails_helper'

RSpec.describe VideoUser, :type => :model do
  it "user has viewed only first and last videos " do
    res = VideoUser.where(user_id: 1).where(video_id: [1, 4])
     expect(VideoUser.where(user_id: 1).where(video_id: [1, 4])).to eq(res)
  end
  
   it "user has viewed only rubymethods video " do
    res = VideoUser.where(user_id: 1).where(video_id: 3)
     expect(VideoUser.where(user_id: 1).where(video_id: 3)).to eq(res)
   end
   
   it "user has viewed only last video " do
    res = VideoUser.where(user_id: 1).where(video_id: 4)
     expect(VideoUser.where(user_id: 1).where(video_id: 4)).to eq(res)
   end
end
