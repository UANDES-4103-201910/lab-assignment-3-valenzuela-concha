class EventVenue < ApplicationRecord
	belongs_to :Event

	def last_attendance
		idvenue = self[:id]
		x = Event.where(event_venue_id: idvenue).select(:id, :start_date).order(:start_date).last

		y = TicketType.where(event_id: x[:id]).select(:id)
		idtt = []
		y.each{|z| idtt << z[:id]}

		return TicketOrder.where({ticket_type_id: idtt}).count
	end

end

