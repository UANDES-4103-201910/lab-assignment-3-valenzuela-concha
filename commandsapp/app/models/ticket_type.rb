class TicketType < ApplicationRecord
	has_one :event
	#belongs_to :ticket_order
end
