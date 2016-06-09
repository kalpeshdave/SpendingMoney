require 'rails_helper'

RSpec.describe "bills/show", :type => :view do
  before(:each) do
    @bill = assign(:bill, Bill.create!(date: DateTime.now, bill_type: "Dinner", amount: 25.0))
  end

  it "renders attributes in <p>" do
    render
    response.body.should match(/Dinner/)
    response.body.should match(/25.0/)
  end
end
