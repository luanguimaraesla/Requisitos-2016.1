# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'SETTING UP DEFAULT ADMIN LOGIN'
admin = Admin.create! :email => 'eletronjun@gmail.com', :password => '123eletronjun', :password_confirmation => '123eletronjun'
puts 'New admin created for the email: ' << admin.email

puts 'SETTING UP DEFAULT CLIENTS LOGIN'

(1..20).each do |id|
  client = Client.create!(
    :email => "teste#{id}@gmail.com",
    :password => "#{id.to_s*3}senha",
    :password_confirmation => "#{id.to_s*3}senha",
    name: "Cliente Teste #{id}",
    username: "cliente_teste_#{id}",
    cpf: "#{(id%10)}23.234.345.90",
    phone: "(61) 99976-345#{(id%10)}",
    company: "Eletronjun",
    address: "Avenida dos Containers"
  )
  puts 'New client created for the email: ' << client.email
end


puts 'SETTING UP DEFAULT PRODUCTS'
product = Product.create! name: 'resistor 20R 1/8W', code: '7777765', category: 'Componentes Eletrônicos', price: '0.07'
puts 'New product created for the name: ' << product.name
product = Product.create! name: 'resistor 100R 1/8W', code: '7777768', category: 'Componentes Eletrônicos', price: '0.11'
puts 'New product created for the name: ' << product.name
product = Product.create! name: 'resistor 150R 1/8W', code: '7777769', category: 'Componentes Eletrônicos', price: '0.11'
puts 'New product created for the name: ' << product.name
product = Product.create! name: 'resistor 200R 1/8W', code: '7777781', category: 'Componentes Eletrônicos', price: '0.11'
puts 'New product created for the name: ' << product.name
product = Product.create! name: 'resistor 0.5kR 1/8W', code: '7777783', category: 'Componentes Eletrônicos', price: '0.12'
puts 'New product created for the name: ' << product.name
product = Product.create! name: 'resistor 2.5kR 1/8W', code: '7777776', category: 'Componentes Eletrônicos', price: '0.12'
puts 'New product created for the name: ' << product.name

puts 'SETTING UP DEFAULT SERVICES'
service = Service.create! name: 'Impressão 3D', code: '7777765', category: 'Fábrica', price: '0.07'
puts 'New service created for the name: ' << service.name
service = Service.create! name: 'Manutenção de Dispositivos', code: '7777768', category: 'Manutenção', price: '0.11'
puts 'New service created for the name: ' << service.name
service = Service.create! name: 'FAB LAB', code: '7777769', category: 'Fábrica', price: '0.11'
puts 'New service created for the name: ' << service.name
