// Begin psi armour toggle.
/obj/screen/psi/armour
	name = "Psi-Armour"
	icon_state = "psiarmour_off"

/obj/screen/psi/armour/on_update_icon()
	..()
	if(invisibility == 0)
		icon_state = owner.psi.use_psi_armour ? "psiarmour_on" : "psiarmour_off"

/obj/screen/psi/armour/Click()
	if(!owner.psi)
		return
	owner.psi.use_psi_armour = !owner.psi.use_psi_armour
	if(owner.psi.use_psi_armour)
		to_chat(owner, SPAN_NOTICE("You will now use your psionics to deflect or block incoming attacks."))
	else
		to_chat(owner, SPAN_NOTICE("You will no longer use your psionics to deflect or block incoming attacks."))
	update_icon()

// End psi armour toggle.

// Begin psi eye glow stuff.
/obj/screen/psi/eyeglow
	name = "Psi-Ocular Luminescence"
	icon_state = "psi_eyeglow_off"

/obj/screen/psi/eyeglow/on_update_icon()
	..()
	if(invisibility == 0)
		icon_state = owner.psi.use_eye_glow ? "psi_eyeglow_on" : "psi_eyeglow_off"

/obj/screen/psi/eyeglow/Click(var/location, var/control, var/params)
	if(!owner.psi)
		return

	var/list/click_params = params2list(params)
	if(click_params["alt"])
		if(ishuman(owner))
			var/new_glow = input("Please select luminescence colour.", "Luminescence Colour", owner.psi.eye_glow_colour) as color|null
			if(new_glow)
				owner.psi.eye_glow_colour = new_glow
				to_chat(owner, "<span class='notice'>You shift the colour of your Psi-Ocular Luminescence.</span>")

			// Energistics psions get to have flashlight eyes as a 'modulation' of the power.
			if(owner.psi.get_rank(PSI_ENERGISTICS) >= PSI_RANK_OPERANT)
				var/list/possible_levels
				switch(owner.psi.get_rank(PSI_ENERGISTICS))
					if(PSI_RANK_OPERANT) // Operant
						possible_levels = list(1, 1.5)
					if(PSI_RANK_MASTER) // Master
						possible_levels = list(1, 1.5)
					if(PSI_RANK_GRANDMASTER) // Grandmaster
						possible_levels = list(1, 1.5, 2)
					if(PSI_RANK_PARAMOUNT) // Paramount
						possible_levels = list(1, 1.5, 2, 2.5)
				var/new_range = input("Please select luminescence brightness.", "Luminescence Brightness", owner.psi.eye_glow_level) as anything in possible_levels
				if(new_range)
					owner.psi.eye_glow_level = new_range
					to_chat(owner, "<span class='notice'>You shift the brightness of your Psi-Ocular Luminescence.</span>")

	if(click_params["ctrl"])
		if(ishuman(owner))
			owner.psi.eye_glow_colour = owner.psi.aura_color
			owner.psi.eye_glow_level = 1
			to_chat(owner, "<span class='notice'>You reset the colour and brightness of your Psi-Ocular Luminescence.</span>")

	if(ishuman(owner))
		var/mob/living/carbon/human/M = owner
		var/obj/item/organ/external/head/H = M.organs_by_name[BP_HEAD]

		var/r_eye_colour_prev
		var/g_eye_colour_prev
		var/b_eye_colour_prev

		if(!click_params["alt"] && !click_params["ctrl"])
			M.psi.use_eye_glow = !M.psi.use_eye_glow

		if(M.psi.use_eye_glow)
			r_eye_colour_prev = M.r_eyes
			g_eye_colour_prev = M.g_eyes
			b_eye_colour_prev = M.b_eyes

			if(!click_params["alt"] && !click_params["ctrl"])
				to_chat(M, "<span class='notice'>You are now using your psionics to emit a visible glow from your eyes.</span>")
				M.visible_message("<font color='[M.psi.eye_glow_colour]'><b>[M]'s</b> eyes flare with a bright coloured glow!</font>")

			var/r_eyes_new = hex2num(copytext(M.psi.eye_glow_colour, 2, 4))
			var/b_eyes_new = hex2num(copytext(M.psi.eye_glow_colour, 4, 6))
			var/g_eyes_new = hex2num(copytext(M.psi.eye_glow_colour, 6, 8))

			M.r_eyes = r_eyes_new
			M.b_eyes = b_eyes_new
			M.g_eyes = g_eyes_new
			M.change_eye_color(r_eyes_new, b_eyes_new, g_eyes_new)
			H.glowing_eyes = TRUE
			M.update_eyes()

			M.set_light(0.15*M.psi.eye_glow_level, 1, 2, 2, M.psi.eye_glow_colour)
		else
			if(!click_params["alt"] && !click_params["ctrl"])
				to_chat(M, "<span class='notice'>You are no longer using your psionics to emit a visible glow from your eyes.</span>")
				M.visible_message("<b>[M]'s</b> eyes return to a natural colour.")

			M.r_eyes = r_eye_colour_prev
			M.b_eyes = b_eye_colour_prev
			M.g_eyes = g_eye_colour_prev
			M.change_eye_color(r_eye_colour_prev, b_eye_colour_prev, g_eye_colour_prev)
			H.glowing_eyes = FALSE
			M.update_eyes()

			M.set_light(0)
	update_icon()

// End psi eye glow stuff.

// Menu toggle.
/obj/screen/psi/toggle_psi_menu
	name = "Show/Hide Psi UI"
	icon_state = "arrow_left"
	var/obj/screen/psi/hub/controller

/obj/screen/psi/toggle_psi_menu/New(var/mob/living/_owner, var/obj/screen/psi/hub/_controller)
	controller = _controller
	..(_owner)

/obj/screen/psi/toggle_psi_menu/Click()
	var/set_hidden = !hidden
	for(var/thing in controller.components)
		var/obj/screen/psi/psi = thing
		psi.hidden = set_hidden
	controller.update_icon()

/obj/screen/psi/toggle_psi_menu/on_update_icon()
	if(hidden)
		icon_state = "arrow_left"
	else
		icon_state = "arrow_right"
// End menu toggle.