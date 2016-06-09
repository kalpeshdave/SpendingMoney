require 'rails_helper'

RSpec.describe "bill_friends/index", :type => :view do
  before(:each) do
    bill = Bill.create!(date: DateTime.now, bill_type: "Dinner", amount: 25.0)
    assign(:bill_friends, [
      BillFriend.create!(user_id: 1, bill_id: bill.id, contribution: 10.0),
      BillFriend.create!(user_id: 2, bill_id: bill.id, contribution: 15.0)
    ])
  end

  it "renders a list of bill_friends" do
    render
  end
end
