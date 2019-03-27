# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: 'Josephine', last_name: 'Valenzuela', email: 'jrvalenzuela@miuandes.cl', phone: 942501928, password: '12345', address: 'Los catus 1898, lo barnechea')
u2 = User.create(name: 'Martin', last_name: 'Concha', email: 'maconcha@miuandes.cl', phone: 942501934, password: '12345', address: 'Los catus 1898, lo barnechea')
u3 = User.create(name: 'Nicolas', last_name: 'Grigoriew', email: 'nico@miuandes.cl', phone: 942501929, password: '12345', address: 'Los catus 1898, lo barnechea')
u4 = User.create(name: 'Mauricio', last_name: 'Valenzuela', email: 'mavalenzuela@miuandes.cl', phone: 942501930, password: '12345', address: 'Los catus 1898, lo barnechea')
u5 = User.create(name: 'Luna', last_name: 'Valenzuela', email: 'lmvalenzuela@miuandes.cl', phone: 942501931, password: '12345', address: 'Los catus 1898, lo barnechea')

ev1 = EventVenue.create(name: 'Movistar Arena', address: 'Parque Ohiggins', capacity: 1000)
ev2 = EventVenue.create(name: 'Estadio nacional', address: 'marathon', capacity: 2000)
ev3 = EventVenue.create(name: 'Teatro Caupolican', address: 'caupolican', capacity: 500)

e1 = Event.create(name: 'Paloma Mami', description: 'The best of both worlds', start_date: Date.new(2019,2,3), event_venue_id: u1.id)
e2 = Event.create(name: 'Ayowoki', description: 'The return', start_date: Date.new(2019,4,3), event_venue_id: u2.id)
e3 = Event.create(name: 'Foo Fighters', description: 'Wow', start_date: Date.new(2020,2,3), event_venue_id: u3.id)

tt1 = TicketType.create(event_id: e1.id, price: 10000, category: 'Cancha')
tt2 = TicketType.create(event_id: e1.id, price: 20000, category: 'Andes')
tt3 = TicketType.create(event_id: e1.id, price: 30000, category: 'Cancha VIP')

tt4 = TicketType.create(event_id: e2.id, price: 11000, category: 'Cancha')
tt5 = TicketType.create(event_id: e2.id, price: 21000, category: 'Galucha')
tt6 = TicketType.create(event_id: e2.id, price: 31000, category: 'Cancha VIP')

tt7 = TicketType.create(event_id: e3.id, price: 15000, category: 'Cancha')
tt8 = TicketType.create(event_id: e3.id, price: 25000, category: 'Andes')
tt9 = TicketType.create(event_id: e3.id, price: 35000, category: 'Pacifico')

to1 = TicketOrder.create(user_id: u1.id, ticket_type_id: tt5.id, total: tt5.price)
#TicketOrder.find(1).ticket_type_id << TicketType.find(5).id
#TicketOrder.find(1).ticket_type_id << TicketType.find(9).id
aux1 = TicketType.find(5).price + TicketType.find(9).price + TicketType.find(1).price
TicketOrder.update(1, total: aux1)


to2 = TicketOrder.create(user_id: u2.id, ticket_type_id: tt6.id, total: tt6.price)
#o2.ticket_type_id << tt2.id
#to2.ticket_type_id << tt8.id
aux2 = TicketType.find(6).price + TicketType.find(8).price + TicketType.find(2).price
TicketOrder.update(2, total: aux2)


to3 = TicketOrder.create(user_id: u3.id, ticket_type_id: tt4.id, total: tt4.price)
#to3.ticket_type_id << tt3.id
#to3.ticket_type_id << tt7.id
aux3 = TicketType.find(4).price + TicketType.find(7).price + TicketType.find(3).price
TicketOrder.update(3, total: aux3)


to4 = TicketOrder.create(user_id: u4.id, ticket_type_id: tt6.id, total: tt6.price)
#to4.ticket_type_id << tt2.id
#to4.ticket_type_id << tt8.id
aux4 = TicketType.find(6).price + TicketType.find(8).price + TicketType.find(2).price
TicketOrder.update(4, total: aux4)


to5 = TicketOrder.create(user_id: u5.id, ticket_type_id: tt5.id, total: tt5.price)
#to5.ticket_type_id << tt3.id
#to5.ticket_type_id << tt7.id
aux5 = TicketType.find(5).price + TicketType.find(3).price + TicketType.find(7).price
TicketOrder.update(5, total: aux5)

