require "spec_helper"

describe TweetsController do
  integrate_views
  
  describe "#index" do 
		it "should render twitter account name" do
			get :index 
			response.body.should include("TheDailyShow")
		end
		it "should see the Wall Street tweet" do
			get :index
			response.body.should include("Wall Street's reaction")
		end
	
	end
end
	