# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

PAYMENT_STATUSES = ['pagada', 'no pagada', 'pendiente de pago']
ORDER_STATUSES = ['recibida', 'en preparación', 'en reparto', 'entregada']

puts 'Cleaning database...'
Order.destroy_all
User.destroy_all

puts 'Creating new users'

5.times do
  user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
  puts "Creating unpaid and undelivered orders for user #{user.id}"
  5.times do
    order = Order.new(
      amount: rand(1000..5000),
      payment_status: ['no pagada', 'pendiente de pago'].sample,
      order_status: ['recibida', 'en preparación', 'en reparto'].sample
    )
    order.user = user
    order.save!
  end
  puts "Creating paid and undelivered orders for user #{user.id}"
  3.times do
    order = Order.new(
      amount: rand(1000..5000),
      payment_status: 'pagada',
      payment_date: Date.today - rand(0..5),
      order_status: ['recibida', 'en preparación', 'en reparto'].sample
    )
    order.user = user
    order.save!
  end
  puts "Creating unpaid and delivered orders for user #{user.id}"
  3.times do
    order = Order.new(
      amount: rand(1000..5000),
      payment_status: ['no pagada', 'pendiente de pago'].sample,
      order_status: 'entregada',
      delivery_date: Date.today - rand(0..5)
    )
    order.user = user
    order.save!
  end
end
