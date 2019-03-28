class TicketType < ApplicationRecord
	has_one :Event
	belongs_to :TicketOrder
end
