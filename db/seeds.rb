# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.create(name: 'Biscuit',
               description: 'Crispy Sweet biscuits',
               price: '29.99')
Product.create(name: 'Chocolate',
               description: 'Sweet lava chocolate',
               price: '59.99')
Product.create(name: 'Popcorns',
               description: 'Crispy Salty popcorns',
               price: '89.99')
