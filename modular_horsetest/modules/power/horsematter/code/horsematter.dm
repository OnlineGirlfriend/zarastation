// Horsematter //

// It's a horse-shaped supermatter crystal.

// This file contains an override replacing the standard supermatter icons with the horsematter.
// In the future, you might consider changing this so we start with the standard supermatter, but the horsematter is achievable somehow.
// For example, we've tossed around the idea of making the supermatter sculptable and even making sculpting the supermatter an antag objective.

// I also personally think it would be sick and cool if you could somehow tame the horsematter (with atmos magic?) to obtain a legendary.

// Override below.

/obj/machinery/power/supermatter_crystal
	icon = 'modular_horsetest/modules/power/horsematter/icons/horsematter.dmi'
	base_icon_state = "hm"
	icon_state = "hm"

// Because of the way the supermatter code is written, we don't need to change anything else as long as our icons have the correct suffix.
// Refer to tg's supermatter.dm to see how that works.
