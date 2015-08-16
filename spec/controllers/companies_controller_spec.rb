require 'rails_helper'

RSpec.describe CompaniesController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the companies into @companies" do
      company1, company2 = Company.create!, Company.create!
      get :index
      expect(assigns(:companies)).to match_array([company1, company2])
    end
   end
   
   describe "GET #show" do
    it "loads all of the badges into @badges" do
     badges = Company.badges_per_company(1)
     expect(Company.badges_per_company(1)).to eq(badges)
    end
   end
end
