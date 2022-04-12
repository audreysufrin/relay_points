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
Admin.destroy_all
Admin.create(email:"admin@tanou.bio", password: "123456")

puts " Relay Point  Destroying... "
RelayPoint.destroy_all
puts "Relay Point destroyed"

puts "Relay Point creating...."

relay_point1 = RelayPoint.create!(name: "Ta Nou", name_shopify: "drive", name_common:"Ta Nou", hours: "de 7h à 12h & 13h à 15h", localisation: "shorturl.at/hpMQ8", address: "Baie des Tourelles - quartier Dillon", contact: "Ta Nou", status: "actif", commune: "Fort de France", phone_number:"0696.88.34.05", image_shopify:"shorturl.at/nEIO8")
relay_point2 = RelayPoint.create!(name: "Mme Maffre", name_shopify: "pr-maffre", name_common:"Chez Mme Maffre", hours: "de 15h à 19h", localisation: "shorturl.at/hwAMP" , address:"Baie des Tourelles - quartier Dillon", contact: "Mme Maffre", status: "actif", commune: "Trois-îlet", phone_number:"0696.88.34.05", image_shopify:"https://cdn.shopify.com/s/files/1/0246/4035/6429/files/PR_Maffre.jpg?v=1643678592,")
relay_point3 = RelayPoint.create!(name: "Mme et Mr Murté", name_shopify: "pr-murte",name_common:"Chez Mme et Mr Murté", hours: "de 10h à 18h", localisation:"shorturl.at/iGNR0", address: "Baie des Tourelles - quartier Dillon", contact: "Mme et Mr Murté", status: "actif", commune: "Le Diamant", phone_number:"0696.88.34.05", image_shopify:"https://cdn.shopify.com/s/files/1/0246/4035/6429/files/WhatsApp_Image_2022-01-14_at_10.22.21.jpg?v=1642465905")
relay_point4 = RelayPoint.create!(name: "Dépôt de Bacchus", name_shopify: "pr-le-dépôt-de-bacchus", name_common: "Le magain le Dépôt de Bacchus", hours:"de 10h à 12h & 14h à 18h", localisation:"shorturl.at/hlwNY", address:"Baie des Tourelles - quartier Dillon", status: "actif", commune:"Ducos", phone_number:"0696.88.34.05", image_shopify:"https://cdn.shopify.com/s/files/1/0246/4035/6429/files/IMG_2438.jpg?v=1634688884")
relay_point5 = RelayPoint.create!(name: "CSoft", name_shopify: "pr-csoft", name_common:"La Société Csoft", hours:"de 9h à 12h", localisation:"shorturl.at/rJX67", address: "Baie des Tourelles - quartier Dillon", status: "Non actif", commune:"Ducos", image_shopify:"https://cdn.shopify.com/s/files/1/0246/4035/6429/files/IMG_2438.jpg?v=1634688884")
relay_point6 = RelayPoint.create!(name: "Envol3 Martinique", name_shopify: "pr-evol3-martinique", name_common:"L'association Envol3 Martinique", hours:"de 9h à 12h", localisation:"shorturl.at/lqAQ4", address: "Baie des Tourelles - quartier Dillon",commune:"La Trinité", status:"Non actif", image_shopify:"https://cdn.shopify.com/s/files/1/0246/4035/6429/files/IMG_2438.jpg?v=1634688884")
relay_point7 = RelayPoint.create!(name: "Mr Marmot", name_shopify:"pr-stephane-marmot", name_common:"Chez Mr Marmot", hours:"de 14h à 17h", localisation: "shorturl.at/cgDJ3", contact: "Mr Marmot", address: "Baie des Tourelles - quartier Dillon", status:"actif", commune: "Le Carbet", phone_number:"0696.88.34.05image_shopify:", image_shopify:"https://cdn.shopify.com/s/files/1/0246/4035/6429/files/Point_Relais_-_Stephane.jpg?v=1629387282")
relay_point8 = RelayPoint.create!(name: "Christophe Ridarch", name_shopify:"pr-ridarch", hours:"de 10h à 16h30", status:"Non actif", address: 'some address', image_shopify:"shorturl.at/drvL3")
relay_point9 = RelayPoint.create!(name: "Plage case navire", name_shopify:"pr-case-navire", status:"Non actif", address: 'some address', hours: "nul", image_shopify:"shorturl.at/hlpOV")
relay_point10 = RelayPoint.create!(name: "Mr Pasua", name_shopify:"pr-pasua", name_common: "Mr Pasua", hours: "de 13h30 à 15h30 & 16h30 à 18h", localisation: "shorturl.at/gEKLS", address: "Baie des Tourelles - quartier Dillon", contact: "Mr Pasua", status:"actif", commune:"Schoelcher", phone_number:"0696.88.34.05", image_shopify:"https://cdn.shopify.com/s/files/1/0246/4035/6429/files/Photo_PR_PASUA.jpg?v=1646084609")
relay_point11 = RelayPoint.create!(name: "Mme et Mr Toris",name_shopify:"pr-toris", name_common: "Chez Mme et Mr Toris", hours: "de 10h à 12h & 13h à 17h", localisation:"shorturl.at/jrw29", address: "Baie des Tourelles - quartier Dillon", contact: "Ta Nou", status:"actif", commune: "Riviere-Salée", phone_number:"0696.88.34.05", image_shopify:"https://cdn.shopify.com/s/files/1/0246/4035/6429/files/Les_Toris.jpg?v=1637331340")

puts 'Relay Point Created'
