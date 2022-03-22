# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create([
                 {
                   "name": "one",
                   "brand": "one",
                   "price": "1",
                   "description": "one_one"
                 },
                 {
                   "name": "two",
                   "brand": "two",
                   "price": "2",
                   "description": "two_two"
                 },    {
                   "name": "three",
                   "brand": "three",
                   "price": "3",
                   "description": "three_three"
                 }
               ])