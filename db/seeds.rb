# encoding: utf-8
# Clear out database each time rake db:seed is run
Character.delete_all
VideoGame.delete_all
Company.delete_all

# Add companies to database
naughty_dog = Company.create(name: 'Naughty Dog')

# Add video games to database
uncharted1 = VideoGame.create(title: "Uncharted: Drake's Fortune", release_year: 2007, genre: 'Third Person Shooter / Action', bio: "A 400-year-old clue in the coffin of Sir Francis Drake sets a modern-day fortune hunter on an exploration for the fabled treasure of El Dorado, leading to the discovery of a forgotten island in the middle of the Pacific Ocean. The search turns deadly when Nathan Drake becomes stranded on the island and hunted by mercenaries. Outnumbered and outgunned, Drake and his companions must fight to survive as they begin to unravel the terrible secrets hidden on the Island. Taking full advantage of the power of PS3, Uncharted: Drake’s Fortune is developed using proprietary technology that promises to impress players with incredibly realistic characters and lifelike environments. Building on its legacy of extraordinary storytelling, developer Naughty Dog has created an elaborate plot that will have players guessing at every turn. Uncharted: Drake's Fortune, brings players into a world ripe with realism and unexpected juxtapositions.")
uncharted2 = VideoGame.create(title: "Uncharted 2: Among Thieves", release_year: 2009, genre: 'Third Person Shooter / Action', bio: "Uncharted 2: Among Thieves is the story of Nathan Drake, a fortune-hunter with a shady reputation and an even shadier past who is lured back into the treacherous world of thieves and mercenary treasure-seekers. The tenth game by premier PlayStation 3 developer Naughty Dog, Uncharted 2: Among Thieves allows players to take control of Drake and embark on a journey that will push him to his physical, emotional and intellectual limits to discover the real truth behind the lost fleet of Marco Polo and the legendary Himalayan valley of Shambhala.")
last_of_us = VideoGame.create(title: "The Last of Us", release_year: 2013, genre: 'Action', bio: "Survive an apocalypse on Earth in The Last of Us, a PlayStation 3-exclusive title by Naughty Dog. Here, you will find abandoned cities reclaimed by nature. Here is a population decimated by a modern plague. Here, there are only survivors killing each other for food, weapons, or whatever they can get their hands on. Here, you find no hope. Joel, a brutal survivor, and Ellie, a brave young teenage girl who is wise beyond her years, must work together if they hope to survive their journey across the US.")

# Assign video games to developing company
naughty_dog.video_games << uncharted1
naughty_dog.video_games << uncharted2
naughty_dog.video_games << last_of_us

# Add characters to database
nathan_drake = Character.create(name: 'Nathan Drake', gender: 'male', bio: "Nathan 'Nate' Drake is a treasure hunter and fortune seeker, as well as a deep-sea salvage expert, action-pro, and professional thief, having competed with several enemies such as Atoq Navarro, Zoran Lazarevic, Katherine Marlowe and Roberto Guerro. Nate believes himself to be the descendant of the famous English explorer Francis Drake.")
victor_sullivan = Character.create(name: 'Victor Sullivan', gender: 'male', bio: "Victor 'Sully' Sullivan is a longtime partner of Nathan Drake and a treasure hunter as well. Sullivan has mentored Drake for some time, and is a father figure for him. Richard McGonagle voices Sullivan for all three games in the series.")
elena_fisher = Character.create(name: 'Elena Fisher', gender: 'female', bio: "Elena Fisher is an American journalist, TV personality and Foreign Correspondent appearing in all of the console games and the female lead, and main love interest, of the series. Amy Hennig commented that she created her to be the 'female counterpart to Drake', not the 'damsel in distress', and more than a love interest, and she indeed is the female version of Nate in the franchise.")
chloe_frazer = Character.create(name: 'Chloe Frazer', gender: 'female', bio: "Chloe and Nathan Drake were in a relationship for some time in the past since before the events of Uncharted: Drake's Fortune. In Among Thieves, Chloe acts like a double agent, secretly helping Nate while also supporting Zoran Lazarevic's forces and Harry Flynn, the two antagonists searching for the fabled Cintamani Stone in Shambhala. Little is known about Chloe's history. She and Nate were in a relationship in the past. Despite this, both of them still had strong feelings for each other.")
joel = Character.create(name: 'Joel', gender: 'male', bio: "A brutal survivor with few moral lines left to cross. Joel, now in his late 40s, has been hardened by the ravages of the fungal pandemic that has devastated civilization as we know it. He’s lost friends, family, and everything he valued in life. Living in one of few remaining military-controlled quarantine zones, he operates as a black market smuggler, dealing in contraband, taking numerous de-humanizing jobs over the years to survive in this new post-pandemic world. Joel’s conscience slowly dwindles away as he shuts down his emotions to cope to his new life.")
ellie = Character.create(name: 'Ellie', gender: 'female', bio: "A brave, 14 year old girl, Ellie has grown up in this harsh world and it is all she has ever known. She’s an orphan who was raised in a boarding school run by the military within the bounds of the quarantine zone. Naïve and curious about the outside world, she is wise beyond her years and highly capable of taking care of herself and those around her. Obsessed with comic books, CDs, and other pop culture, her knowledge base is filled by the remnants of a world that no longer exists.")

# Assign characters to video games
uncharted1.characters << nathan_drake
uncharted1.characters << victor_sullivan
uncharted1.characters << elena_fisher

uncharted2.characters << nathan_drake
uncharted2.characters << victor_sullivan
uncharted2.characters << elena_fisher
uncharted2.characters << chloe_frazer

last_of_us.characters << joel
last_of_us.characters << ellie