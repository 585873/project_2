# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hall_oates = Artist.create({
  name: "Hall & Oates",
  photo_url: "greatest_band_evar.jpg",
  nationality: "Philly"
})

limp_bizkit = Artist.create({
  name: "Limp Bizkit",
  photo_url: "fred_durst.png",
  nationality: "Jacksonville"
})

weird_al = Artist.create({
  name: "Weird Al Yankovic",
  photo_url: "weird_al.jpg",
  nationality: "Amish Paradise"
})

hall_oates.songs.create({
  title: "Private Eyes",
  album: "Private Eyes",
  preview_url: "spotify.com"
})

limp_bizkit.songs.create({
  title: "Break Stuff",
  album: "Significant Other",
  preview_url: "grooveshark.com"
})

weird_al.songs.create({
  title: "The Saga Begins",
  album: "Running With Scissors",
  preview_url: "tidal.com"
})
