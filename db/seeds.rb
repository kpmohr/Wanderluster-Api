# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Profile.destroy_all

Profile.create([
  {name: 'Kait',
  bio: 'test bio',
  image:'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAenAAAAJGI2NmI1YzViLWU0ZjctNGNiOC04ZWUyLWVmZjEwMWQwMTU1OA.jpg',
  user_id: 1},
  ])

Profile.create([
  {name: 'Test name',
  bio: 'test bio tester',
  image:'http://books.google.com/books/content?id=3Z8zxKDqKDMC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
  user_id: 2},
  ])
