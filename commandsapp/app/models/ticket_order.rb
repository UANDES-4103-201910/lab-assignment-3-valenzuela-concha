class TicketOrder < ApplicationRecord
	has_one :user
	has_many :ticket_type
end
