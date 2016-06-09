require 'rails_helper'

RSpec.describe "bill_friends/new", :type => :view do
  before(:each) do
    @bill = Bill.create!(date: DateTime.now, bill_type: "Dinner", amount: 25.0)
    assign(:bill_friend, BillFriend.new(user_id: 1, bill_id: @bill.id, contribution: 10.0))
  end

  it "renders new bill_friend form" do
    render

    assert_select "form[action=?][method=?]", bill_bill_friends_path(@bill), "post" do
    end
  end
end
