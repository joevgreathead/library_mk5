# Seed the database.

# Create a sample event.

Event.create! name: "Sample Event", location: "Desk",
  start_date: Date.today, end_date: 1.week.from_now,
  current: true

# Create some sample games. First up, make up an example publisher and an
# example title:
publisher = Publisher.create! name: "Example Publisher"
title = Title.create! title: "Example Card Game", publisher: publisher

# Now create example instances:
Game.create! barcode: "BARCODE1", title: title
Game.create! barcode: "BARCODE2", title: title
