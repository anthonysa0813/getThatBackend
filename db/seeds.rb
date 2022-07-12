User.destroy_all
Seeker.destroy_all
Landlord.destroy_all

User.create(email: 'test@mail.com', name:"pedro gomez", password: '123456')
User.create(email: 'hello@mail.com',name:"Kiara Pato", password: '123456')
Seeker.create(email: 'test@mail.com', name:"pedro gomez", password: '123456')
Seeker.create(email: 'hello@mail.com',name:"Kiara Pato", password: '123456')
Landlord.create(email: 'anthony@mail.com', name:"Anthony sanchez", password: '123456')