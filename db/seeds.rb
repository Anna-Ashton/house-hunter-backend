# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding data! 🌱🌱🌱🌱🌱🌱🌱"

# seeding users
9.times do
  User.create(
    full_name: Faker::Name.name,
    username: Faker::Internet.username(specifier: 5..10),
    email: Faker::Internet.email,
    contact: Faker::Number.leading_zero_number(digits: 10)
  )
end

puts "landlords seeds 🚀🚀🚀"
# seeding landlords
9.times do
  Landlord.create(
    full_name: Faker::Name.name,
    username: Faker::Internet.username(specifier: 5..10),
    email: Faker::Internet.email,
    contacts: Faker::Number.leading_zero_number(digits: 10),
    caretaker_name: Faker::Name.unique.name,
    password_digest: Faker::Internet.password
  )
end

puts "homes here we go 🏚️🏚️🏚️🏚️"
# seeding houses
House.create(estate_name: "Jamhuri Estate" ,
  img_url: "https://images.unsplash.com/photo-1565953522043-baea26b83b7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  price: 50000,
  user_id: 1,
  landlord_id: 1,
  location: "Ngong Rd" ,
  description: "This elegant apartment has a very spacious compound with ample vehicle parking space and sufficient water supply. It is up for rent. Large bedrooms with big windows allowing in a lot of natural light. *Sufficient supply of water from both Nairobi Water and Sewerage Company (NWSC) and a borehole on site.",
  house_type:"Apartment",
  bedrooms: 4)
House.create(estate_name: "Athi View Estate",
  img_url: "https://images.unsplash.com/photo-1612637968894-660373e23b03?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
  price: 45000,
  user_id: 2,
  landlord_id: 2,
  location: "Syokimau" ,
  description: "Big and spacious rooms. Master bedroom suite with wardrobes and a walk-in shower. All rooms with wardrobes, tiles, and wall curtain hangings. Has a utility area. Wardrobes and cabinets. Parking space for each unit with independent access to a private garden.",
  house_type: "Apartment",
  bedrooms: 3)
House.create(estate_name: "Airways Estate" ,
  img_url: "https://images.unsplash.com/photo-1594484208280-efa00f96fc21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
  price: 40000,
  user_id: 3,
  landlord_id: 3,
  location: "Utawala" ,
  description: "This modern elegant apartment boasts modern fixtures fittings and finishings ready for occupancy. Has sliding glass windows, an open kitchen plan,fans,fully tiled, plenty of water, parking, and security.",
  house_type: "Apartment",
  bedrooms: 3)
House.create(estate_name: "Mirema Greens Estate" ,
  img_url: "https://images.unsplash.com/photo-1560026301-88340cf16be7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80" ,
  price: 8000000 ,
  user_id: 4,
  landlord_id: 4,
  location: "Off Mirema Drive" ,
  description: "Big and spacious rooms. Master bedroom suite with wardrobes and a walk-in shower. All rooms with wardrobes, tiles, and wall curtain hangings. Has a utility area. Wardrobes and cabinets. Parking space for each unit with independent access to a private garden." ,
  house_type: "Maisonette" ,
  bedrooms: 4 )
House.create(estate_name: "Mirema Greens Estate" ,
  img_url: "https://images.unsplash.com/photo-1597590774504-923720e6cb62?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=391&q=80" ,
  price: 60000 ,
  user_id: 5,
  landlord_id: 5,
  location: "Off Mirema Drive" ,
  description: "Lovely apartment with large spacious living area, dining area, imported ceramic tiled floors, air conditioners, master en suite bedroom, ample parking space, and in-build wardrobes.",
  house_type: "Apartment" ,
  bedrooms: 4)
House.create(estate_name: "Mirema Greens Estate" ,
  img_url: "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
  price: 80000 ,
  user_id: 6,
  landlord_id: 6,
  location: "Off Mirema Drive" ,
  description: " Apartment master ensuite with spacious living room and dining room, speed lifts, gym, playground for children, borehole, backup generator, ample parking, and customized finishes.",
  house_type: "Apartment" ,
  bedrooms: 5)
House.create(estate_name: "Diamond Park",
  img_url: "https://images.unsplash.com/photo-1619542402915-dcaf30e4e2a1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
  price: 5000000,
  user_id: 7,
  landlord_id: 7,
  location: "Kilimani",
  description: "This spacious mansion has its own compound with a detached self-contained servant quarter. Has a mature garden with some trees, spacious rooms, plenty of water security, and parking.",
  house_type: "Mansion",
  bedrooms: 5)
House.create(estate_name: "Nyayo Estate",
  img_url: "https://images.unsplash.com/photo-1558036117-15d82a90b9b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
  price: 35000,
  user_id: 8,
  landlord_id: 8,
  location: "Embakasi",
  description: "Villa and servant quarters for rent with a mature private and enclosed garden. It has spacious rooms, plus an ensuite servant quarter. Ready for the occupation.",
  house_type: "Maisonette",
  bedrooms: 3)
House.create(estate_name: "Nyayo Estate",
  img_url: "https://images.unsplash.com/photo-1567684014761-b65e2e59b9eb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
  price: 40000,
  user_id: 9,
  landlord_id: 9,
  location: "Embakasi",
  description: "Apartment master ensuite, wooden floor/ entry has a cozy lounge opening to a balcony, separate dining, separate kitchen with pantry and utility area, scenic views, extra car park, 24hrs security, garbage disposal cable ready, DStv and zuku, borehole. ",
  house_type: "Apartment",
  bedrooms: 3)


  puts "review 🌠🌠🌠🌠🌠🌠🌠"
# seeding reviews
Review.create(user_id: 1,house_id: 1,comment: "The apartment is spacious and has sufficient water supply.")
Review.create(user_id: 1,house_id: 1,comment: "Beautiful apartment with a beautiful scenery.")
Review.create(user_id: 2,house_id: 2,comment: "The apartment is well maintained and clean.")
Review.create(user_id: 2,house_id: 2,comment: "Loved the service of the caretaker. Very professional!")
Review.create(user_id: 3,house_id: 3,comment: "Well finished apartment, though the sliding doors are not sliding smoothly.")
Review.create(user_id: 3,house_id: 3,comment: "Loved the kitchen plan.")
Review.create(user_id: 4,house_id: 4,comment: "Big and spacious as stated in the description")
Review.create(user_id: 4,house_id: 4,comment: "Quality finishing of the apartment.")
Review.create(user_id: 5,house_id: 5,comment: "Air conditioner not working.")
Review.create(user_id: 5,house_id: 5,comment: "Felt so welcome.")
Review.create(user_id: 6,house_id: 6,comment: "Enough play ground for the children.")
Review.create(user_id: 6,house_id: 6,comment: "Spacious living room and quality finishing.")
Review.create(user_id: 7,house_id: 7,comment: "Well taken care of and everything in the place it should be.")
Review.create(user_id: 7,house_id: 7,comment: "Quite spacious with private compound. Loved the scenery!")
Review.create(user_id: 8,house_id: 8,comment: "Spacious and beautiful kitchen gardens.")
Review.create(user_id: 8,house_id: 8,comment: "The compound is very private without disturbance from neighbours.")
Review.create(user_id: 9,house_id: 9,comment: "Ample parking space and a big compound for kids to play.")
Review.create(user_id: 9,house_id: 9,comment: "Did not like the balcony, quite dirty.")

puts "Do bookings ☄️☄️☄️☄️☄️☄️"
# booking
Booking.create(user_id: 2,house_id: 2,booking_date: "2023-4-4")
Booking.create(user_id: 1,house_id: 1,booking_date: "2023-2-4")
Booking.create(user_id: 3,house_id: 4,booking_date: "2023-3-4")


puts "End of seeding data! 🔥🔥🔥🔥"