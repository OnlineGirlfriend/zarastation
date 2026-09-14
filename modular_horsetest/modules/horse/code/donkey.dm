// Experimental donkey code within //

		//// **Notes for this file** ////

// need to set it up for donkey breeding
// you can breed a donkey to a horse, but you'll get a mule/hinny, which is sterile
// the only possible offspring of a donkey are
	// a donkey
	// a mule (if bred with a horse and the donkey is the male parent)
	// a hinny (if bred with a horse and the donkey is the female parent)
	// a zonkey, if the other parent is a zebra (which we have yet to add)

// mules/hinnies should be the same creature but just named differently based on parentage

/mob/living/basic/horse/donkey
	name = "donkey"
	desc = "A sturdy and loyal equine creature. More compact than a horse."
	icon = 'modular_horsetest/modules/horse/icons/horse.dmi'
	icon_state = "donkey"
	icon_living = "donkey"
	icon_dead = "pony_dead" // change this later I suppose
	gender = MALE
	mob_biotypes = MOB_ORGANIC | MOB_BEAST
	speak_emote = list("brays", "heehaws")

// I have no idea how to handle the below. //

	breed = /datum/horse_breed/donkey

/datum/emote/donkey/bray

// add braying sound
