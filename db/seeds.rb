# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: 'Objects')
Category.create(name: 'Animals')
Category.create(name: 'Geometric Shapes')
Category.create(name: 'Nature')
Category.create(name: 'Human body')
Category.create(name: 'Food')
Category.create(name: 'Others')


User.create(name: "suresh", email: "sureshsigera@gmail.com", password: "sigera", "password_confirmation": "sigera")
User.create(name: "sinara", email: "sinaramartins@gmail.com", password: "aranis", "password_confirmation": "aranis")
User.create(name: "shay", email: "shay@gmail.com", password: "shay", "password_confirmation": "shay")
User.create(name: "user4", email: "user4@gmail.com", password: "user4", "password_confirmation": "user4")
User.create(name: "user5", email: "user5@gmail.com", password: "user5", "password_confirmation": "user5")
User.create(name: "user6", email: "user6@gmail.com", password: "user6", "password_confirmation": "user6")
User.create(name: "user7", email: "user7@gmail.com", password: "user7", "password_confirmation": "user7")




