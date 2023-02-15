# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(email: 'florp@jorb.com', password: '0000', username: 'florp')
user2 = User.create(email: 'shiv@example,com', password: '1234', username: 'shivvermetimbers_')
user3 = User.create(email: 'scooby@example,com', password: '5678', username: 'scoobysama')

p "users created!"

# workout = Habit.create(name: 'workout', user_id: user.id)
# cooking = Habit.create(name: 'cooking', user_id: user.id)
# meditate = Habit.create(name: 'meditate', user_id: user.id)
# sober = Habit.create(name: 'sober', user_id: user.id)
# skincare = Habit.create(name: 'skincare', user_id: user.id)
# water = Habit.create(name: 'water', user_id: user.id)
# coding = Habit.create(name: 'coding', user_id: user.id)
# reading = Habit.create(name: 'reading', user_id: user.id)
# art = Habit.create(name: 'art', user_id: user.id)
# vitamins = Habit.create(name: 'vitamins', user_id: user.id)

# p "habits created!"
