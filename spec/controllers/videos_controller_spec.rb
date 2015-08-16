require 'rails_helper'

RSpec.describe VideosController, :type => :controller do
  
  describe 'play' do
    it 'iterate number  of views' do
     res = VideoUser.iterate_number_view(1, 1)
     expect(VideoUser.iterate_number_view(1, 1)).to eq(res)
    end
   it "should render js" do
      get :play, format: :js
      expect(response).to have_http_status(200)
   end
    
  end

end
