# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Destroying Users... "
User.destroy_all
puts "Users destroyed"

puts "Creating Users... "
user1 = User.create!()
user2 = User.create!()

puts "Users Created"

puts " Relay Point  Destroying... "
RelayPoint.destroy_all
puts "Relay Point destroyed"

puts "Relay Point creating...."

RelayPoint.create!(name: "Ta Nou", name_shopify: "drive", name_common:"Ta Nou", hours: "7h à 12h et 13h à 15h", geolocation:"https://www.google.com/maps/place/14%C2%B036'22.4%22N+61%C2%B003'15.0%22W/@14.6062336,-61.056346,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d14.6062336!4d-61.0541573?hl=fr" address: "Baie des Tourelles - quartier Dillon", contact: "Ta Nou", status: "Actif", commune: "Fort de France", phone_number:"0696.88.34.05")
RelayPoint.create!(name: "Mme Maffre", name_shopify: "pr-maffre", name_common:"Chez Mme Maffre", hours: "15h à 19h", address: "rue des baliziers Vauclin", geolocation: "https://waze.com/ul/hddsddtr0t" , address:"23 lotissement Les Hameaux de la Pagerie", contact: "Mme Maffre", status: "Actif", commune: "Trois-îlet", phone_number:"0696.88.34.05")
RelayPoint.create!(name: "Mme et Mr Murté", name_shopify: "pr-murte",name_common:"Chez Mme et Mr Murté", hours: "10h à 18h", geolocation:"https://goo.gl/maps/XUSv7mi16Lj8ZbWE6" address: "22 rue des Arawaks", contact: "Mme et Mr Murté", status: "Actif", commune: "Le Diamant", phone_number:"0696.88.34.05")
RelayPoint.create!(name: "Dépôt de Bacchus", name_shopify: "pr-le-dépôt-de-bacchus", name_common: "Le magain le Dépôt de Bacchus", hours:"10h à 12h et 14h à 18h", geolocation:"https://goo.gl/maps/Xzs5ABWf8RcQ3YTXA", address:"Quartier Bac, Pays Noyé", status: "Actif", commune:"Ducos", phone_number:"0696.88.34.05")
RelayPoint.create!(name: "CSoft", name_shopify: "pr-csoft", name_common:"La Société Csoft", hours:"9h à 12h", geolocation:"https://maps.app.goo.gl/DfVFrHN8B2d5vgBa8", address: "Zone Petite cocotte - Champigny", status: "Non Actif", commune:"Ducos")
RelayPoint.create!(name: "Envol3 Martinique", name_shopify: "pr-evol3-martinique", name_common:"L'association Envol3 Martinique", hours:"9h à 12h", geolocation:"https://maps.app.goo.gl/oHZS2TM3PsJxfEvMA" address: "Rue de Beausejour",commune:"La Trinité" status:"Non Actif")
RelayPoint.create!(name: "Mr Marmot", name_shopify:"pr-stephane-marmot", name_common:"Chez Mr Marmot", hours:"14h à 17h", geolocation: "https://www.google.com/maps?q=14.726149559020996,-61.161705017089844&z=17&hl=fr", contact: "Mr Marmot" address: "Route des bénédictines", status:"Actif", commune: "Le Carbet", phone_number:"0696.88.34.05")
RelayPoint.create!(name: "Christophe Ridarch", name_shopify:"pr-ridarch", hours:"10h à 16h30", status:"Non Actif")
RelayPoint.create!(name: "Plage case navire", name_shopify:"pr-case-navire", status"Non Actif")
RelayPoint.create!(name: "Mr Pasua", name_shopify:"pr-pasua", name_common: "Mr Pasua", hours: "13h30 à 15h30 et 16h30 à 18h", geolocation: "https://goo.gl/maps/QpcdhQLs1HKsfLgi7" address: "2bis rue Gabriel Plateau fofo", contact: "Mr Pasua", status:"Actif", commune:"Schoelcher", phone_number:"0696.88.34.05")
RelayPoint.create!(name: "Mme et Mr Toris",name_shopify:"pr-toris", name_common: "Chez Mme et Mr Toris", hours: "10h à 12h et 13h à 17h", geolocation:"https://goo.gl/maps/zhKEy21vSgSw87y96" address: "Quartier Médecin", contact: "Ta Nou", status:"Actif", commune: "Riviere-Salée", phone_number:"0696.88.34.05")


puts "Relay Point Created"
