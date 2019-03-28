class Event < ApplicationRecord
	has_one :EventVenue
	belong_to :TicketType

	def self.most_tickets_sold
		idttotal = []
		
		x = TicketOrder.select(:ticket_type_id)
		x.each{|z| idttotal << z[:ticket_type_id]}

		counts = Hash.new(0)
		idttotal.each { |x| counts[x] += 1 }
		a = [] 
		#b = Event.where(id: TicketType.find(w[0])(:event_id)
		#counts.each{|w| a = b}
		y = Event.select(:id)

		def last_attendance
		idvenue = self[:id]
		x = Event.where(event_venue_id: idvenue).select(:id, :start_date).order(:start_date).last

		y = TicketType.where(event_id: x[:id]).select(:id)
		idtt = []
		y.each{|z| idtt << z[:id]}

		return TicketOrder.where({ticket_type_id: idtt}).count
	end
end
