require 'spec_helper'

describe "Proposals" do
  describe "GET /proposals" do
    it "not signed in" do
      get proposals_path
      response.status.should be(302)
    end
    
    context "signed in" do
      
      # before(:each) do
      #   user = Factory(:user)
      #   visit signin_path
      #   fill_in :email,    :with => user.email
      #   fill_in :password, :with => user.password
      #   click_button("Sign in")
      # end
      
      it "renders proposals index page" do
        login_user
        get proposals_path
        puts response.inspect
        response.status.should have_content("Sent Proposals")
      end
      
    end
  end
end
