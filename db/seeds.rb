# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(email: 'florp@jorb.com', password: '0000', username: 'florp')
user2 = User.create(email: 'shiv@example.com', password: '1234', username: 'shivvermetimbers_')
user3 = User.create(email: 'scooby@example.com', password: '5678', username: 'scoobysama')

p "users created!"

workout = Habit.create(name: 'workout', image: 'https://cdn.discordapp.com/attachments/1075443907208433806/1075572167477043200/workout.png')
cooking = Habit.create(name: 'cooking', image: 'https://cdn.discordapp.com/attachments/1075443907208433806/1075572716922478693/cooking.png')
meditate = Habit.create(name: 'meditate', image: 'https://cdn.discordapp.com/attachments/1075443907208433806/1075572655983431750/meditate.png')
sober = Habit.create(name: 'sober', image: 'https://cdn.discordapp.com/attachments/1075443907208433806/1075572597321900113/no-drinks.png')
skincare = Habit.create(name: 'skincare', image: 'https://cdn.discordapp.com/attachments/1075443907208433806/1075445715091853353/face-mask.png')
water = Habit.create(name: 'water', image: 'https://cdn.discordapp.com/attachments/1075443907208433806/1075572226088259595/water.png')
coding = Habit.create(name: 'coding', image: 'https://cdn.discordapp.com/attachments/1075443907208433806/1075572791090356284/coding.png')
reading = Habit.create(name: 'reading', image: 'https://cdn.discordapp.com/attachments/1075443907208433806/1075572416539013190/read.png')
art = Habit.create(name: 'art', image: 'https://cdn.discordapp.com/attachments/1075443907208433806/1075572835583525044/art.png')
vitamins = Habit.create(name: 'vitamins', image: 'https://cdn.discordapp.com/attachments/1075443907208433806/1075572295780794448/vitamins.png')


p "habits created!"

Activity.create!(user_id: User.first.id, habit_id: Habit.first.id, habit_image: 'https://cdn.discordapp.com/attachments/1075443907208433806/1075572167477043200/workout.png')
Activity.create!(user_id: User.first.id, habit_id: Habit.second.id, habit_image: 'https://cdn.discordapp.com/attachments/1075443907208433806/1075572716922478693/cooking.png')
Activity.create!(user_id: User.first.id, habit_id: Habit.fifth.id, habit_image: 'https://cdn.discordapp.com/attachments/1075443907208433806/1075445715091853353/face-mask.png')
Activity.create!(user_id: User.first.id, habit_id: Habit.third.id, habit_image: 'https://cdn.discordapp.com/attachments/1075443907208433806/1075572655983431750/meditate.png')

p "activities created!"