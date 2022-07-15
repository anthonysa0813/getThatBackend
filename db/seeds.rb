User.destroy_all
Seeker.destroy_all
Landlord.destroy_all
Property.destroy_all
# User.create(email: 'test@mail.com', name:"pedro gomez", password: '123456')
# User.create(email: 'hello@mail.com',name:"Kiara Pato", password: '123456')
Seeker.create(email: 'test1@mail.com', name:"pedro gomez", password: '123456')
Seeker.create(email: 'test2@mail.com',name:"Kiara Pato", password: '123456')
landlord1 =Landlord.create(email: 'alejandra@mail.com', name:"Alejandra Hernandez", password: '123456')
landlord2 = Landlord.create(email: 'anthony@mail.com', name:"Anthony sanchez", password: '123456')


# Property

Property.create(operation_type: "rent",
      address: "alameda central mz 32 lt 9 urb.Previ - Los Olivos",
      montly_price: 1500,
      maintance: 100,
      property_type: "apartment",
      bedrooms_count: 4,
      bathroom_count: 2,
      area: 100,
      pets_allowed: false,
      description: "3 Bedroom/2 Bathroom apartment available for ASAP move-in!
                    Apartment features hardwood floors throughout, virtual doorman, Central AC/heat, dishwasher and a microwave. 
                    The kitchen has custom cabinetry and the living room is big enough to fit a dinner table, a couch and a tv set up.",
      photo: "https://res.cloudinary.com/dzgbz8lvg/image/upload/v1657903896/getThatHome/Rectangle_17_6_kt4s2x.png",
      active_published: true,
      user_id: landlord1.id)
Property.create(operation_type: "rent",
      address: "alameda central mz 32 lt 9 urb.Previ - Los Olivos",
      montly_price: 1500,
      maintance: 100,
      property_type: "apartment",
      bedrooms_count: 4,
      bathroom_count: 2,
      area: 100,
      pets_allowed: true,
      description: "3 Bedroom/2 Bathroom apartment available for ASAP move-in!
Apartment features hardwood floors throughout, virtual doorman, Central AC/heat, dishwasher and a microwave. 
The kitchen has custom cabinetry and the living room is big enough to fit a dinner table, a couch and a tv set up.",
      photo: "https://res.cloudinary.com/dzgbz8lvg/image/upload/v1657903893/getThatHome/Rectangle_17_5_mq0ba3.png",
      active_published: true,
      user_id: landlord1.id)
Property.create(operation_type: "rent",
      address: "alameda central mz 32 lt 9 urb.Previ - Los Olivos",
      montly_price: 1500,
      maintance: 100,
      property_type: "apartment",
      bedrooms_count: 4,
      bathroom_count: 2,
      area: 100,
      pets_allowed: true,
      description: "3 Bedroom/2 Bathroom apartment available for ASAP move-in!
Apartment features hardwood floors throughout, virtual doorman, Central AC/heat, dishwasher and a microwave. 
The kitchen has custom cabinetry and the living room is big enough to fit a dinner table, a couch and a tv set up.",
      photo: "https://res.cloudinary.com/dzgbz8lvg/image/upload/v1657903891/getThatHome/Rectangle_17_4_g2xsap.png",
      active_published: true,
      user_id: landlord1.id)
Property.create(operation_type: "rent",
      address: "alameda central mz 32 lt 9 urb.Previ - Los Olivos",
      montly_price: 1500,
      maintance: 100,
      property_type: "apartment",
      bedrooms_count: 4,
      bathroom_count: 2,
      area: 100,
      pets_allowed: true,
      description: "3 Bedroom/2 Bathroom apartment available for ASAP move-in!
Apartment features hardwood floors throughout, virtual doorman, Central AC/heat, dishwasher and a microwave. 
The kitchen has custom cabinetry and the living room is big enough to fit a dinner table, a couch and a tv set up.",
      photo: "https://res.cloudinary.com/dzgbz8lvg/image/upload/v1657903861/getThatHome/Rectangle_17_3_yvljl6.png",
      active_published: true,
      user_id: landlord1.id)
Property.create(operation_type: "rent",
      address: "alameda central mz 32 lt 9 urb.Previ - Los Olivos",
      montly_price: 1500,
      maintance: 100,
      property_type: "apartment",
      bedrooms_count: 4,
      bathroom_count: 2,
      area: 100,
      pets_allowed: true,
      description: "3 Bedroom/2 Bathroom apartment available for ASAP move-in!
Apartment features hardwood floors throughout, virtual doorman, Central AC/heat, dishwasher and a microwave. 
The kitchen has custom cabinetry and the living room is big enough to fit a dinner table, a couch and a tv set up.",
      photo: "https://res.cloudinary.com/dzgbz8lvg/image/upload/v1657903858/getThatHome/Rectangle_17_2_q6khuo.png",
      active_published: true,
      user_id: landlord1.id)
Property.create(operation_type: "rent",
      address: "alameda central mz 32 lt 9 urb.Previ - Los Olivos",
      montly_price: 1500,
      maintance: 100,
      property_type: "house",
      bedrooms_count: 4,
      bathroom_count: 1,
      area: 150,
      pets_allowed: true,
      description: "3 Bedroom/2 Bathroom apartment available for ASAP move-in!
Apartment features hardwood floors throughout, virtual doorman, Central AC/heat, dishwasher and a microwave. 
The kitchen has custom cabinetry and the living room is big enough to fit a dinner table, a couch and a tv set up.",
      photo: "https://res.cloudinary.com/dzgbz8lvg/image/upload/v1657903855/getThatHome/Rectangle_17_1_olpq8c.png",
      active_published: false,
      user_id: landlord2.id)
Property.create(operation_type: "sale",
      address: "alameda central mz 32 lt 9 urb.Previ - Los Olivos",
      montly_price: 1500,
      maintance: 100,
      property_type: "house",
      bedrooms_count: 3,
      bathroom_count: 1,
      area: 150,
      pets_allowed: false,
      description: "3 Bedroom/2 Bathroom apartment available for ASAP move-in!
Apartment features hardwood floors throughout, virtual doorman, Central AC/heat, dishwasher and a microwave. 
The kitchen has custom cabinetry and the living room is big enough to fit a dinner table, a couch and a tv set up.",
      photo: "https://res.cloudinary.com/dzgbz8lvg/image/upload/v1657903853/getThatHome/Rectangle_17_txzpps.png",
      active_published: false,
      user_id: landlord2.id)
Property.create(operation_type: "sale",
      address: "alameda central mz 32 lt 9 urb.Previ - Los Olivos",
      montly_price: 1500,
      maintance: 100,
      property_type: "house",
      bedrooms_count: 3,
      bathroom_count: 1,
      area: 150,
      pets_allowed: false,
      description: "3 Bedroom/2 Bathroom apartment available for ASAP move-in!
Apartment features hardwood floors throughout, virtual doorman, Central AC/heat, dishwasher and a microwave. 
The kitchen has custom cabinetry and the living room is big enough to fit a dinner table, a couch and a tv set up.",
      photo: "https://res.cloudinary.com/dzgbz8lvg/image/upload/v1657903853/getThatHome/Rectangle_17_txzpps.png",
      active_published: false,
      user_id: landlord2.id)
Property.create(operation_type: "sale",
      address: "alameda central mz 32 lt 9 urb.Previ - Los Olivos",
      montly_price: 1500,
      maintance: 100,
      property_type: "house",
      bedrooms_count: 3,
      bathroom_count: 1,
      area: 150,
      pets_allowed: false,
      description: "3 Bedroom/2 Bathroom apartment available for ASAP move-in!
Apartment features hardwood floors throughout, virtual doorman, Central AC/heat, dishwasher and a microwave. 
The kitchen has custom cabinetry and the living room is big enough to fit a dinner table, a couch and a tv set up.",
      photo: "https://res.cloudinary.com/dzgbz8lvg/image/upload/v1657903896/getThatHome/Rectangle_17_6_kt4s2x.png",
      active_published: false,
      user_id: landlord2.id)