require 'rails_helper'

RSpec.describe "BillFriends", :type => :request do
  describe "GET /bill/1/bill_friends" do
    it "works! (now write some real specs)" do
      get bill_bill_friends_path(1)
      expect(response).to have_http_status(200)
    end
  end
end
