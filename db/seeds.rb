# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
devs = Developer.create([
  {name:"Ethan Sherbondy", email: "ethanis@mit.edu", api_key:"testing123"},
  {name:"Alex List", email: "alist@mit.edu", api_key:"abceasyas123"}
])
