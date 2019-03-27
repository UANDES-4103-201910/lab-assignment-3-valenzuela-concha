class User < ApplicationRecord
	def most_expensive_ticket_bought
		return TicketOrder.where(user: User.id && TicketOrder.ticket_id.order(:price).last).ticket

	end
end
