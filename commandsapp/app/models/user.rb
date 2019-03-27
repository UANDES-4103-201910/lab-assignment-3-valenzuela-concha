class User < ApplicationRecord
	def most_expensive_ticket_bought
		idticket = []
		valores = []
		x = TicketOrder.where(user_id: 1).select(:ticket_type_id)
		x.each{|y| idticket << y[:ticket_type_id]}
		print x
		print idticket
		idticket.each{|s| valores << TicketType.where(id: s).select(:price).take[:price]}
		print valores
		return valores.max
	end
end
