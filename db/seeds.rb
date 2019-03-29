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


kobe = Player.create!(name:"Kobe Bryant", position: "Shooting Guard", team_id: bobcats.id, age: 28, img_url: "https://media.giphy.com/media/xT9KVwfZ1xyA3y6qcw/giphy.gif")
lebron = Player.create!(name:"Lebron James", position: "Shooting Guard", team_id: herbs.id, age: 28, img_url: "https://media.giphy.com/media/l0Iyh6zphUKTjaxoI/giphy.gif")
spongebob = Player.create!(name:"SpongeBob Squarepants", position: "Shooting Guard", team_id: statues.id, age: 28, img_url: "https://media.giphy.com/media/M8xmO5ZcLPtAY/giphy.gif")
john = Player.create!(name:"John Starks", position: "Shooting Guard", team_id: flatironers.id, age: 28, img_url: "https://media.giphy.com/media/tP1ZTDH8MYt0I/giphy.gif")

ray = Player.create!(name:"Ray Allen", position: "Point Guard", team_id: bobcats.id, age: 28, img_url: "https://media.giphy.com/media/l0ErN4njtUxLwQNHi/giphy.gif")
desk = Player.create!(name:"Woody Allen", position: "Point Guard", team_id: herbs.id, age: 28, img_url: "https://i.pinimg.com/474x/34/77/c3/3477c3b54457ef50c2e03bdaa7b3fdc5.jpg")
will = Player.create!(name:"Will Mannychester", position: "Point Guard", team_id: statues.id, age: 28, img_url: "https://media.giphy.com/media/T2AmoAqrjAluU/giphy.gif")
jim = Player.create!(name:"James Washington IV", position: "Point Guard", team_id: flatironers.id, age: 28, img_url: "https://raw.githubusercontent.com/peidansauyukjuk/deploy-on-day-1-dumbo-web-career-021819/master/img/students/james_dorr_profile.jpg")

simone = Player.create!(name:"Simone May Antetekumpo", position: "Center", team_id: bobcats.id, age: 28, img_url: "https://github.com/peidansauyukjuk/deploy-on-day-1-dumbo-web-career-021819/blob/master/img/students/simon_mei_profile.jpeg?raw=true")
brain = Player.create!(name:"Brain Ury", position: "Center", team_id: herbs.id, age: 28, img_url: "https://raw.githubusercontent.com/peidansauyukjuk/deploy-on-day-1-dumbo-web-career-021819/master/img/students/brian_ryu.jpg")
matt = Player.create!(name:"Matt Bye", position: "Center", team_id: statues.id, age: 28, img_url: "https://media.licdn.com/dms/image/C4D03AQFJXw540SrrzQ/profile-displayphoto-shrink_800_800/0?e=1559174400&v=beta&t=Aiy0Tlwz4ILYftfhG0fQVdYvRIzEwGEyku3sFfJijjY")
fred = Player.create!(name:"Freddi Flintstone", position: "Center", team_id: flatironers.id, age: 28, img_url: "https://media.giphy.com/media/1it9hyynPEqZKrNo1Y/giphy.gif")

jo = Player.create!(name:"Jordan Belford", position: "Power Forward", team_id: bobcats.id, age: 28, img_url: "https://media.giphy.com/media/OTg4nrmU8vkty/giphy.gif")
beef = Player.create!(name:"Cow Man", position: "Power Forward", team_id: herbs.id, age: 28, img_url: "https://media.giphy.com/media/h55EUEsTG9224/giphy.gif")
astro = Player.create!(name:"Tacko Falls", position: "Power Forward", team_id: statues.id, age: 28, img_url: "https://media.giphy.com/media/9Pvfql9AWrRXCi2Oga/giphy.gif")
zion = Player.create!(name:"Zion Superfragilistickexpialadoucious", position: "Power Forward", team_id: flatironers.id, age: 28, img_url: "https://media.giphy.com/media/BWCHh3nCM0qtRm5fyo/giphy.gif")

doublelift = Player.create!(name:"Duuble Lift", position: "Small Forward", team_id: bobcats.id, age: 28, img_url: "https://media.giphy.com/media/SIlGZtFjpMhq/giphy.gif")
dan = Player.create!(name:"Dan White", position: "Small Forward", team_id: herbs.id, age: 28, img_url: "https://media.giphy.com/media/mpYqfyPHoHnxu/giphy.gif")
pie = Player.create!(name:"Pie Guy", position: "Small Forward", team_id: statues.id, age: 28, img_url: "https://media.giphy.com/media/thln8oJs58o7u/giphy.gif")
basketball = Player.create!(name:"Soccer Man", position: "Small Forward", team_id: flatironers.id, age: 28, img_url: "https://i.pinimg.com/474x/34/77/c3/3477c3b54457ef50c2e03bdaa7b3fdc5.jpg")


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



comment1_game1 = Comment.create!(game_id: game1.id, content: "This game sucked!", name: "Chrees")
comment2_game1 = Comment.create!(game_id: game1.id, content: "This game really sucked!", name: "Chrees")
comment3_game1 = Comment.create!(game_id: game1.id, content: "This game really REALLY sucked!", name: "Chrees")
comment1_game2 = Comment.create!(game_id: game2.id, content: "This game sucked!", name: "Chrees")
comment2_game2 = Comment.create!(game_id: game2.id, content: "This game really sucked!", name: "Chrees")
comment3_game2 = Comment.create!(game_id: game2.id, content: "This game really REALLY sucked!", name: "Chrees")
