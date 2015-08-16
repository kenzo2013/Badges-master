require 'rails_helper'

RSpec.describe Company, :type => :model do

  it "return badges per company" do
    badges = User.get_user_ids(1)
     expect(User.get_user_ids(1)).to eq(badges)
  end  
end
