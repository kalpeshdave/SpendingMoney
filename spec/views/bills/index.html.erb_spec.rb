require 'rails_helper'

RSpec.describe "bills/index", :type => :view do
  before(:each) do
    assign(:bills, [
      Bill.create!(date: DateTime.now, bill_type: "Dinner", amount: 25.0),
      Bill.create!(date: DateTime.now, bill_type: "Lunch", amount: 25.0)
    ])
  end

  it "renders a list of bills" do
    render
    response.body.should match(/Dinner/)
    response.body.should match(/Lunch/)
  end
end
