require 'rails_helper'

RSpec.describe Badge, :type => :model do
  it "get badges" do
    badges = Badge.where(id: [1, 2])
     expect(Badge.where(id: [1, 2])).to eq(badges)
  end  
end
