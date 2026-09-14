// Breed List:
	// Grade Horse
	// Arabian
	// Morgan
	// Percheron
	// Quarter Horse
	// Space Mustang
	// Thoroughbred

/datum/horse_breed
	var/name = "Grade Horse" // that's what we be callin em irl
	var/description = "A horse of mixed or unknown breeding."
	var/min_temperament = 20
	var/max_temperament = 60
	var/min_intelligence = 20
	var/max_intelligence = 60
	var/min_speed = 20
	var/max_speed = 60
	var/ideal_temperament = 30  // Lower is calmer
	var/ideal_intelligence = 50
	var/ideal_speed = 50
	var/rarity = 5


/datum/horse_breed/akhalteke
	name = "Akhal-Teke"
	description = "A slender riding horse with a distinctive metallic sheen. This breed is adapted to desert environments."
	min_temperament = 40
	max_temperament = 70
	min_intelligence = 50
	max_intelligence = 85
	min_speed = 35
	max_speed = 60 // These would have quite high endurance by the way
	ideal_temperament = 55
	ideal_intelligence = 80
	ideal_speed = 50
	rarity = 8 // Quite rare

/datum/horse_breed/arabian
	name = "Arabian"
	description = "An ancient breed known for exceptional intelligence, endurance, and spirit. Highly prized."
	min_temperament = 40  // More spirited
	max_temperament = 80 // These horses can truly be assholes
	min_intelligence = 50  // Very smart
	max_intelligence = 85
	min_speed = 45  // Third fastest breed behind Thoroughbreds and QHs.  Should have the highest endurance of the three
	max_speed = 75
	ideal_temperament = 55
	ideal_intelligence = 80
	ideal_speed = 75
	rarity = 3 // Pretty common

/datum/horse_breed/donkey
	name = "Donkey"
	description = "A hardy little relative of the horse. Donkeys are known for their stubbornness, but they make excellent companions."
	min_temperament = 20
	max_temperament = 40
	min_intelligence = 70 // Donkeys are VERY smart
	max_intelligence = 95
	min_speed = 20
	max_speed = 45
	ideal_temperament = 25
	ideal_intelligence = 80
	ideal_speed = 45
	rarity = 4

/datum/horse_breed/morgan
	name = "Morgan"
	description = "A versatile breed with an incredible disposition. Morgans make for loyal and courageous friends."
	min_temperament = 20  // Calm and trainable
	max_temperament = 40 // Very good boys
	min_intelligence = 50 // Quite intelligence
	max_intelligence = 75
	min_speed = 25 // Not that fast, but they will have high endurance
	max_speed = 45
	ideal_temperament = 25
	ideal_intelligence = 65
	ideal_speed = 45
	rarity = 3

/datum/horse_breed/percheron
	name = "Percheron"
	description = "A large, powerful working breed. Calm and steady, but not particularly fast."
	min_temperament = 5
	max_temperament = 30
	min_intelligence = 15
	max_intelligence = 45
	min_speed = 5
	max_speed = 25
	ideal_temperament = 15
	ideal_intelligence = 35
	ideal_speed = 20
	rarity = 3  // Common draft horse

/datum/horse_breed/quarter_horse
	name = "Quarter Horse"
	description = "The most popular breed. Well-balanced, trainable, and versatile."
	min_temperament = 20  // Calm and trainable
	max_temperament = 50
	min_intelligence = 40
	max_intelligence = 75 // Quarter horses are very intelligent
	min_speed = 65
	max_speed = 100 // Faster than a Thoroughbred, but with less endurance (once we add that)
	ideal_temperament = 30
	ideal_intelligence = 65
	ideal_speed = 100
	rarity = 2  // Very common

/datum/horse_breed/mustang
	name = "Space Mustang"
	description = "A feral breed descended from escaped horses. Hardy, independent, and spirited, these horses populate numerous planets in this sector."
	min_temperament = 45  // Wild spirit
	max_temperament = 75
	min_intelligence = 40  // Clever survivors
	max_intelligence = 70
	min_speed = 35  // Decent speed
	max_speed = 65
	ideal_temperament = 60
	ideal_intelligence = 60
	ideal_speed = 55
	rarity = 4  // Somewhat common in certain regions

/datum/horse_breed/thoroughbred
	name = "Thoroughbred"
	description = "The premier racing breed, bred for incredible speed and competitive spirit."
	min_temperament = 50  // High-strung
	max_temperament = 95 // Liable to kill you
	min_intelligence = 40
	max_intelligence = 75 // They're also pretty smart
	min_speed = 55  // Second fastest breed behind Quarter Horses
	max_speed = 90
	ideal_temperament = 65
	ideal_intelligence = 50
	ideal_speed = 90
	rarity = 3

// Procs //

/proc/get_random_horse_breed()
	var/list/breed_types = list(
		/datum/horse_breed/quarter_horse,
		/datum/horse_breed/percheron,
		/datum/horse_breed/mustang,
		/datum/horse_breed/thoroughbred,
		/datum/horse_breed/arabian
	)
	return pick(breed_types)

/proc/get_breed_datum(breed_type)
	if(!breed_type)
		return new /datum/horse_breed()
	return new breed_type()
