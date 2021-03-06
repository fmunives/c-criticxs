# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create([ {:name=>"Zombie Driver: Immortal Edition", :gender=>"Racing", :price=>5999, :release_date=>"2019-Jul-25"},
    {:name=>"Remnant: From the Ashes", :gender=>"Shooter", :price=>6999, :release_date=>"2019-Aug-20"},
    {:name=>"Monster Hunter: World - Iceborne", :gender=>"Adventure", :price=>6999, :release_date=>"2019-Sep-06"},
    {:name=>"Cyberpunk 2077", :gender=>"Role-playing (RPG)", :price=>4999, :release_date=>"2020-Sep-17"},
    {:name=>"Pokémon Shield", :gender=>"Role-playing (RPG)", :price=>5999, :release_date=>"2019-Nov-15"},
    {:name=>"Children of Morta", :gender=>"Role-playing (RPG)", :price=>6999, :release_date=>"2019-Sep-03"} ])
