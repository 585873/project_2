# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Instructor.destroy_all
Student.destroy_all

john = Instructor.create(name: "John", email_id: "john@tutor_app.com", subject: "mathematics",)
mark = Instructor.create(name: "Mark", email_id: "mark@tutor_app.com", subject: "javascript")
linda = Instructor.create(name: "Linda", email_id: "linda@tutor_app.com", subject: "html and css")
susan = Instructor.create(name: "Susan", email_id: "susan@tutor_app.com", subject: "science")
billo = Instructor.create(name: "Billo", email_id: "billo@tutor_app.com", subject: "writting")


Student.create(name:"Gurpreet Gill", email_id: "gill@tutor_app.com" , instructor: john)
Student.create(name:"Amandeep Singh", email_id: "singh@tutor_app.com", instructor: mark)
Student.create(name:"Amrinder Gill",  email_id: "agill@tutor_app.com", instructor: mark)
Student.create(name:"Amrinder Gill",  email_id: "agill@tutor_app.com", instructor: linda)
Student.create(name:"Amrinder Gill",  email_id: "agill@tutor_app.com", instructor: susan)
Student.create(name:"Michael James",  email_id: "james@tutor_app.com", instructor: susan)
Student.create(name:"Ryan Boyd",  email_id: "boyd@tutor_app.com", instructor: linda)
