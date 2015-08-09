require 'spec_helper'

describe "UserPages" do

  subject { page }

#  describe "signup page" do
#    before { visit users_new }
#
#    it { response.status.should be(200) }
#  end
  describe "signup page" do
    before { visit signup_path }

    it { response.status.should be(200) }
#    it { should have_content('Sign up') }
#    it { should have_title(full_title('Sign up')) }
  end
#  describe "GET /user_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      # get user_pages_index_path
#      get new_user_page
#      response.status.should be(200)
#    end
#  end
end
