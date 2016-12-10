class Order < ActiveRecord::Base
	belongs_to :user
	has_one :order_status
end
