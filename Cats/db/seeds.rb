# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all

cat1 = Cat.create(birth_date: '2015/01/20', color: 'black', name: 'kobe', description: 'wont pass but will drop ball', sex: 'F')
cat2 = Cat.create(birth_date: '1998/03/20', color: 'brown', name: 'symba', description: 'cant wait to be king', sex: 'M')
cat3 = Cat.create(birth_date: '2010/02/24', color: 'orange', name: 'garfield', description: 'going to kill john', sex: 'M')
cat4 = Cat.create(birth_date: '2008/01/20', color: 'white', name: 'Sassy', description: 'homeword bound', sex: 'F')




