class User < ApplicationRecord
	belongs_to :TicketOrder
	
	def most_expensive_ticket_bought
		iduser = self[:id]
		idticket = []
		valores = []
		x = TicketOrder.where(user_id: iduser).select(:ticket_type_id)
		x.each{|y| idticket << y[:ticket_type_id]}

		idticket.each{|s| valores << TicketType.where(id: s).select(:price).take[:price]}

		return valores.max
	end

	def most_expensive_ticket_bought_between(start, endtime)
		idticket = []
		valores = []
		iduser = self[:id]
		x = TicketOrder.where(user_id: iduser).select(:ticket_type_id, :created_at)
		z = x.where(["created_at >= ? and created_at <= ?", start, endtime])
		#x.each{|w| w.created_at >= "2018-01-01" && w.created_at <= "2018-01-01"}
		z.each{|y| idticket << y[:ticket_type_id]}

		idticket.each{|s| valores << TicketType.where(id: s).select(:price).take[:price]}

		maximo = valores.max
		posicion = valores.index(maximo)
		idt = idticket[posicion]

		return TicketType.find(idt)
	end 

	def last_event
		idticket = []
		valores = []
		fechas =[] 
		iduser = self[:id]
		x = TicketOrder.where(user_id: iduser).select(:ticket_type_id, :created_at).order(:created_at).last
		y = TicketType.find(x[:ticket_type_id])
		z = Event.find(y[:event_id])
		return z[:name]
	end

end
