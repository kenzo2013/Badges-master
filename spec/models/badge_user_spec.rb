require 'rails_helper'

RSpec.describe BadgeUser, :type => :model do
  it "get ids of badges" do
     badge_ids = BadgeUser.select(1).where(user_id: [1,2])
     res= Badge.get_badges(badge_ids)
     expect( Badge.get_badges(badge_ids)).to eq(res)
  end  
end
