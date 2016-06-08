class Bill < ActiveRecord::Base
  attr_accessible :amount, :bill_type, :date

  has_many :bill_friends, dependent: :destroy
  belongs_to :user
  validates_presence_of :date, :amount
  validates_numericality_of :amount
end
