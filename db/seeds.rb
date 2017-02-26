users_list = [
  ["test@test.com", "welcome", "welcome", "I am a test plz ignore", "testusrplzignore"],
  ["hulk@marvel.notasite", "welcome", "welcome", "Hulk SMASH", "brucey"],
  ["thor@midgard.org", "welcome", "welcome", "I have come to have ridiculous hair", "mjolnir"],
  ["supes@clarkkent.com", "welcome", "welcome", "Definitely not Superman", "notsuperman"],
  ["batman@thenight.dark", "welcome", "welcome", "I spend my life in the DAAARK", "superdarknightyo"]
]

organizations_list = [
  ["thejusticeleage", "we do justice and stuff"],
  ["theavengers", "we do better justice and stuff"]
]

campaigns_list = [
  ["the first campaign", "this is a really cool thing", 1],
  ["infinity war", "that jerk thanos", 2],
  ["that really bad movie", "it was bad, supes sucked", 1],
  ["aliens", "aliens attack idk", 2]
]

games_list = [
  ["this is only a test", "testing for tests", "goog.com", 2, 8, "2 hrs"],
  ["th dark night", "joker does stuff", "darkknight.knight.dark", 2, 4, "2.5 hrs"],
  ["thor", "idk it was really boring and slow", "mjolnir.mjolnir.thor", 4, 12, "3 days"]
]

sessions_list = [
  ["par 1", "the first one", "stuff@stuff.com", 1, DateTime.tomorrow, DateTime.tomorrow + 1, "gencon"],
  ["par 2", "the first one", "stuff@stuff.com", 2, DateTime.tomorrow, DateTime.tomorrow + 1, "gencon"],
  ["par 3", "the first one", "stuff@stuff.com", 3, DateTime.tomorrow, DateTime.tomorrow + 1, "gencon"],
  ["par 4", "the first one", "stuff@stuff.com", 1, DateTime.tomorrow, DateTime.tomorrow + 1, "gencon"]
]

runs_list = [
  ["stuff@stuff.com", "another run", DateTime.tomorrow, DateTime.tomorrow + 1, 1, "gencon"],
  ["stuff@stuff.com", "another run", DateTime.tomorrow, DateTime.tomorrow + 1, 2, "gencon"],
  ["stuff@stuff.com", "another run", DateTime.tomorrow, DateTime.tomorrow + 1, 3, "gencon"],
  ["stuff@stuff.com", "another run", DateTime.tomorrow, DateTime.tomorrow + 1, 1, "gencon"]
]

characters_list = [
  ["i'm a name", 1],
  ["I'm another name", 3]
]

users_list.each do |e, pw, pwc, ab, d|
  User.create(email: e, password: pw, password_confirmation: pwc, about_me: ab, display_name: d)
end

organizations_list.each do |n, d|
  Organization.create(name: n, description: d)
end

campaigns_list.each do |n, d, o|
  Campaign.create(name: n, description: d, organization_id: o)
  Campaign.first.editors << [User.find(1), User.find(2)]
end

games_list.each do |t, d, w, min, max, run|
  Game.create(title: t, description: d, website: w, min_player_size: min, max_player_size: max, run_time: run)
  Game.first.editors << [User.find(3), User.find(4)]
  Game.first.authors << [User.find(1), User.find(5)]
end

sessions_list.each do |t, d, w, c, s, e, l|
  Session.create(title: t, description: d, website: w, campaign_id: c, start_datetime: s, end_datetime: e, location: l)
  Session.first.players << [User.find(3), User.find(4)]
  Session.first.gms << [User.find(1), User.find(5)]
  Session.first.npcs << User.find(2)
end

runs_list.each do |w, d, s, e, g, l|
  Run.create(website: w, description: d, start_datetime: s, end_datetime: e, game_id: g, location: l)
  Run.first.players << [User.find(3), User.find(4)]
  Run.first.gms << [User.find(1), User.find(5)]
  Run.first.npcs << User.find(2)
  Run.first.editors << [User.find(3), User.find(4)]
end

characters_list.each do |n, g|
  Character.create(name: n, game_id: g)
  Character.first.editors << User.find(3)
end

runs_list.each do |w, d, s, e, g, l|
  Run.create(website: w, description: d, start_datetime: s, end_datetime: e, game_id: g, location: l)
  Run.first.players << [User.find(3), User.find(4)]
  Run.first.gms << [User.find(1), User.find(5)]
  Run.first.npcs << User.find(2)
  Run.first.editors << [User.find(3), User.find(4)]
end
