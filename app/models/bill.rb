class Bill < ActiveRecord::Base
  attr_accessible :amount, :bill_type, :date

  has_many :bill_friends, dependent: :destroy
  belongs_to :user
  validates :date, :amount, :presence => true
  validates_numericality_of :amount
end
