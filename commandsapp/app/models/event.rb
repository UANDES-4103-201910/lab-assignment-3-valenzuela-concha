class Event < ApplicationRecord
	has_one :event_venue
	#belongs_to :ticket_type

	def self.most_tickets_sold
		total = []
		x = TicketOrder.select(:ticket_type_id)
		x.each{|z| total << [TicketType.find(z[:ticket_type_id])[:event_id], z[:ticket_type_id]]}
		cantidad = Hash.new(0)
		total.each { |x| cantidad[x[0]] += 1 }

		return Event.find(cantidad.key(cantidad.values.max))
	end

	def self.highest_revenue
		total = []
		x = TicketOrder.select(:ticket_type_id)
		x.each{|z| total << [TicketType.find(z[:ticket_type_id])[:event_id], TicketType.find(z[:ticket_type_id])[:price]]}
		suma = Hash.new(0)
		total.each { |x| suma[x[0]] += x[1]}

		return Event.find(suma.key(suma.values.max))
	end
end
