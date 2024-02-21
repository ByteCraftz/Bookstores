# db/seeds.rb
User.create!(username: 'admin', password: 'password', hak_akses: 'admin')
User.create!(username: 'customer', password: 'password', hak_akses: 'customer')
User.create!(username: 'employee', password: 'password', hak_akses: 'employee')