class BillFriend < ActiveRecord::Base
  belongs_to :bill
  belongs_to :user
  attr_accessible :bill_id, :user_id, :contribution

  validates_uniqueness_of :bill_id, scope: [:user_id]

  def supposetopay
    bill.amount / bill.bill_friends.count
  end
end
