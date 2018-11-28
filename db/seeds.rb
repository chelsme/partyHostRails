# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PartyGuest.destroy_all
Task.destroy_all
Song.destroy_all
Guest.destroy_all
Party.destroy_all

empty = Guest.create(name: "", username: '', password: '', picture: '')
amanda = Guest.create(name: 'Amanda Spence', username: 'spenceam', password: 'dog', picture: 'https://static.comicvine.com/uploads/original/2/22385/408971-164777-amanda-spence.jpg')
chels = Guest.create(name: "Chelsea Crowson", username: 'chelsme', password: 'cat', picture: 'http://chelseacrowson.com/images/pic.png')
bn = Guest.create(name: 'Bill Nye', username: 'scienceguy', password: 'science', picture: 'https://innotechtoday.com/wp-content/uploads/2016/03/Copy-of-20150515_BN_Props_237_ca.jpg')

nye = Party.create(name: 'NYE Bash', host_id: 2, date: 'Dec 30', time: 'midnight', location: '1302 Alphabet Street')
    PartyGuest.create(party_id: 1, guest_id: 2)

bday = Party.create(name: 'BDay Party', host_id: 2, date: 'Dec 20', time: '7pm', location: 'my house')
    PartyGuest.create(party_id: 2, guest_id: 2)

old = Party.create(name: 'Chelsea is old', host_id: 1, date: 'June 8', time: '4pm', location: 'Axelrad')
    PartyGuest.create(party_id: 3, guest_id: 1)

pawty = Party.create(name: "SOOmE PawTY", host_id: 3, date: "PawtURdAy", time: "MoRNINg", location: "PawrK")
PartyGuest.create(party_id: 4, guest_id: 3)

Song.create(name: 'Waterfalls', artist: 'TLC', party: nye)
Song.create(name: 'No Scrubs', artist: 'TLC', party: nye)
Song.create(name: 'Spider Webs', artist: 'No Doubt', party: nye)
Task.create(action: 'bring cups', party_id: 1, guest_id: 4)
Task.create(action: 'bring fizzy fruit', party_id: 1, guest_id: 2)
Task.create(action: 'pump up the jam', party_id: 1, guest_id: 3)
Task.create(action: 'bring chairs', party_id: 1, guest_id: 2)
PartyGuest.create(party_id: 1, guest_id: 4)
PartyGuest.create(party_id: 2, guest_id: 4)
PartyGuest.create(party_id: 3, guest_id: 4)
PartyGuest.create(party_id: 1, guest_id: 3)
PartyGuest.create(party_id: 2, guest_id: 3)
PartyGuest.create(party_id: 4, guest_id: 2)