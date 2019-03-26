# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Team.destroy_all
Player.destroy_all
Statistic.destroy_all
Game.destroy_all
Comment.destroy_all


bobcats = Team.create!(location: "Queens",name: "Queens Bobcats", mascot: "Bobcat")
herbs = Team.create!(location: "Brooklyn",name: "Brooklyn Herbs", mascot: "Leaf")
statues = Team.create!(location: "Staten Island",name: "Staten Island Statues", mascot: "Statue of Liberty")
flatironers = Team.create!(location: "Brooklyn",name: "Brooklyn Flatironers", mascot: "Flatiron Building")


kobe = Player.create!(name:"Kobe Bryant", position: "Shooting Guard", team_id: bobcats.id)
lebron = Player.create!(name:"Lebron James", position: "Shooting Guard", team_id: herbs.id)
spongebob = Player.create!(name:"SpongeBob Squarepants", position: "Shooting Guard", team_id: statues.id)
john = Player.create!(name:"John Starks", position: "Shooting Guard", team_id: flatironers.id)

ray = Player.create!(name:"Ray Allen", position: "Point Guard", team_id: bobcats.id)
desk = Player.create!(name:"Woody Allen", position: "Point Guard", team_id: herbs.id)
will = Player.create!(name:"Will Mannychester", position: "Point Guard", team_id: statues.id)
jim = Player.create!(name:"James Washington IV", position: "Point Guard", team_id: flatironers.id)

simone = Player.create!(name:"Simone May Antetekumpo", position: "Center", team_id: bobcats.id)
brain = Player.create!(name:"Brain Ury", position: "Center", team_id: herbs.id)
matt = Player.create!(name:"Matt Bye", position: "Center", team_id: statues.id)
fred = Player.create!(name:"Freddi Flintstone", position: "Center", team_id: flatironers.id)

jo = Player.create!(name:"Jordan Belford", position: "Power Forward", team_id: bobcats.id)
beef = Player.create!(name:"Cow Man", position: "Power Forward", team_id: herbs.id)
astro = Player.create!(name:"Tacko Falls", position: "Power Forward", team_id: statues.id)
zion = Player.create!(name:"Zion Superfragilistickexpialadoucious", position: "Power Forward", team_id: flatironers.id)

doublelift = Player.create!(name:"Duuble Lift", position: "Small Forward", team_id: bobcats.id)
dan = Player.create!(name:"Dan White", position: "Small Forward", team_id: herbs.id)
pie = Player.create!(name:"Pie Guy", position: "Small Forward", team_id: statues.id)
basketball = Player.create!(name:"Soccer Man", position: "Small Forward", team_id: flatironers.id)


game1 = Game.create!(date: "12/1/19", location: "Brooklyn")
game2 = Game.create!(date: "12/2/19", location: "Queens")

#game 1 bobcats
Statistic.create!(player_id: kobe.id, game_id: game1.id, points: 81, assists: 0, blocks: 2, rebounds: 10, steals: 14, turnovers: 8)
Statistic.create!(player_id: ray.id, game_id: game1.id, points: 51, assists: 13, blocks: 2, rebounds: 5, steals: 4, turnovers: 3)
Statistic.create!(player_id: simone.id, game_id: game1.id, points: 14, assists: 6, blocks: 1, rebounds: 10, steals: 1, turnovers: 4)
Statistic.create!(player_id: jo.id, game_id: game1.id, points: 18, assists: 6, blocks: 0, rebounds: 11, steals: 0, turnovers: 4)
Statistic.create!(player_id: doublelift.id, game_id: game1.id, points: 12, assists: 10, blocks: 0, rebounds: 1, steals: 0, turnovers: 4)
#game 1 herbs
Statistic.create!(player_id: lebron.id, game_id: game1.id, points: 8, assists: 10, blocks: 2, rebounds: 1, steals: 4, turnovers: 4)
Statistic.create!(player_id: desk.id, game_id: game1.id, points: 1, assists: 0, blocks: 0, rebounds: 0, steals: 1, turnovers: 0)
Statistic.create!(player_id: brain.id, game_id: game1.id, points: 20, assists: 5, blocks: 2, rebounds: 5, steals: 3, turnovers: 8)
Statistic.create!(player_id: beef.id, game_id: game1.id, points: 12, assists: 0, blocks: 2, rebounds: 10, steals: 4, turnovers: 8)
Statistic.create!(player_id: dan.id, game_id: game1.id, points: 81, assists: 0, blocks: 2, rebounds: 10, steals: 14, turnovers: 8)

#game 2 bobcats
Statistic.create!(player_id: kobe.id, game_id: game2.id, points: 5, assists: 0, blocks: 2, rebounds: 10, steals: 14, turnovers: 8)
Statistic.create!(player_id: ray.id, game_id: game2.id, points: 51, assists: 13, blocks: 2, rebounds: 5, steals: 4, turnovers: 3)
Statistic.create!(player_id: simone.id, game_id: game2.id, points: 14, assists: 6, blocks: 1, rebounds: 10, steals: 1, turnovers: 4)
Statistic.create!(player_id: jo.id, game_id: game2.id, points: 18, assists: 6, blocks: 0, rebounds: 11, steals: 0, turnovers: 4)
Statistic.create!(player_id: doublelift.id, game_id: game2.id, points: 12, assists: 10, blocks: 0, rebounds: 1, steals: 0, turnovers: 4)
#game 2 herbs
Statistic.create!(player_id: lebron.id, game_id: game2.id, points: 8, assists: 10, blocks: 2, rebounds: 1, steals: 4, turnovers: 4)
Statistic.create!(player_id: desk.id, game_id: game2.id, points: 1, assists: 0, blocks: 0, rebounds: 0, steals: 1, turnovers: 0)
Statistic.create!(player_id: brain.id, game_id: game2.id, points: 20, assists: 5, blocks: 2, rebounds: 5, steals: 3, turnovers: 8)
Statistic.create!(player_id: beef.id, game_id: game2.id, points: 12, assists: 0, blocks: 2, rebounds: 10, steals: 4, turnovers: 8)
Statistic.create!(player_id: dan.id, game_id: game2.id, points: 81, assists: 0, blocks: 2, rebounds: 10, steals: 14, turnovers: 8)
