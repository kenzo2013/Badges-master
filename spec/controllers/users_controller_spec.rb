require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  
  
  describe 'link_badge_user' do
    context 'Link was created correctely' do
    it "link automatically badge to user with conditions" do
       res = User.link_automatically_badge_to_user_with_conditions(1)
        expect( User.link_automatically_badge_to_user_with_conditions(1)).to eq(res)
        
    end
    
      it 'redirects to the "index" action ' do
       User.link_automatically_badge_to_user_with_conditions(1)
        expect(response).to redirect_to user_path 
      end
    end
    
    
     context 'Link was not created correctely' do
    it "link automatically badge to user with conditions" do
       res = User.link_automatically_badge_to_user_with_conditions(1)
       expect( User.link_automatically_badge_to_user_with_conditions(1)).to eq(res)
        
    end
    
      it 'redirects to the "index" action ' do
       User.link_automatically_badge_to_user_with_conditions(1)
       expect(response).to redirect_to user_path 
      end
    end
    
  end

end
