# Seed the database.

# Create a sample event. This is important because there needs to be a
# "current event."
Event.create! name: "Sample Event", location: "Desk",
  start_date: Date.today, end_date: 1.week.from_now,
  current: true

# Create some sample games. First up, make up an example publisher and an
# example title:
publisher = Publisher.create! name: "Example Publisher"
card_game = Title.create! title: "Example Card Game", publisher: publisher
tournament_game = Title.create! title: "Example Tournament Game", publisher: publisher, likely_tournament: true

# Now create example instances:
Game.create! barcode: "BARCODE1", title: card_game
Game.create! barcode: "BARCODE2", title: card_game
Game.create! barcode: "BARCODE3", title: tournament_game
Game.create! barcode: "BARCODE4", title: tournament_game
Game.create! barcode: "BARCODE5", title: tournament_game
Game.create! barcode: "BARCODE6", title: tournament_game
