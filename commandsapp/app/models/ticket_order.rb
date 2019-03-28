class TicketOrder < ApplicationRecord
	has_one :User
	has_many :TicketType
end
