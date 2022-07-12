User.destroy_all
User.create(email: 'test@mail.com', password: '123456')
User.create(email: 'hello@mail.com', password: '123456')