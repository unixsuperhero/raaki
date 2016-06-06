# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def rand_score
  (rand * 100).round(0)
end

def names
  %w{ Leah Luke Chewie Kylo Rei Vader 3po R2D2 Yoda Obi Snoke
      Palpatine Jarjar Padme Jawa Wompa Goomba Woomba Pete }
end

names.each do |name|
  User.create(nick: name, wins: rand_score)
end
