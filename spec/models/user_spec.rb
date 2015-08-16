require 'rails_helper'

RSpec.describe User, :type => :model do
 it "get ids of users" do
    user_ids = User.select('id').where(company_id: 1)
    result = BadgeUser.get_badge_ids(user_ids)
    expect(BadgeUser.get_badge_ids(user_ids)).to eq(result)
  end 
  
end
