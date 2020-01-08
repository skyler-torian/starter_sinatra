User.destroy_all
VideoGame.destroy_all

User.find_or_create_by(name: "Skyler")
User.find_or_create_by(name: "Jenny")

VideoGame.find_or_create_by(title: "Super Smash Bros", genre: "Fighting", user_id: 1)
VideoGame.find_or_create_by(title: "Super Mario Galaxy", genre: "Fighting", user_id: 2)
VideoGame.find_or_create_by(title: "Persona 5", genre: "JRPG", user_id: 2)
VideoGame.find_or_create_by(title: "Destiny 2", genre: "MMORPG", user_id: 1)

