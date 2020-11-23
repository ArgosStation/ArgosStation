/area/ship/scrap
	name = "\improper Generic Ship"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg')

/area/ship/scrap/crew
	name = "\improper Crew Compartments"
	icon_state = "crew_quarters"

/area/ship/scrap/crew/hallway/port
	name = "\improper Crew Hallway - Port"

/area/ship/scrap/crew/hallway/starboard
	name = "\improper Crew Hallway - Starboard"

/area/ship/scrap/crew/kitchen
	name = "\improper Galley"
	icon_state = "kitchen"

/area/ship/scrap/crew/cryo
	name = "\improper Cryo Storage"
	icon_state = "cryo"

/area/ship/scrap/crew/dorms1
	name = "\improper Crew Cabin #1"
	icon_state = "green"

/area/ship/scrap/crew/dorms2
	name = "\improper Crew Cabin #2"
	icon_state = "purple"

/area/ship/scrap/crew/dorms3
	name = "\improper Crew Cabin #3"
	icon_state = "yellow"

/area/ship/scrap/crew/saloon
	name = "\improper Saloon"
	icon_state = "conference"

/area/ship/scrap/crew/toilets
	name = "\improper Bathrooms"
	icon_state = "toilet"
	turf_initializer = /decl/turf_initializer/maintenance

/area/ship/scrap/crew/wash
	name = "\improper Washroom"
	icon_state = "locker"

/area/ship/scrap/crew/medbay
	name = "\improper Medical Bay"
	icon_state = "medbay"

/area/ship/scrap/cargo
	name = "\improper Cargo Hold"
	icon_state = "quartstorage"

/area/ship/scrap/cargo/lower
	name = "\improper Lower Cargo Hold"

/area/ship/scrap/dock
	name = "\improper Docking Bay"
	icon_state = "entry_1"

/area/ship/scrap/garden
	name = "\improper Garden"
	icon_state = "green"

/area/ship/scrap/unused
	name = "\improper Operating Theatre"
	icon_state = "yellow"
	req_access = list(access_medical)

/area/ship/scrap/hidden
	name = "\improper Chemical Lab"
	icon_state = "auxstorage"
	req_access = list(access_medical)

/area/ship/scrap/escape_port
	name = "\improper Port Escape Pods"
	icon_state = "green"

/area/ship/scrap/escape_star
	name = "\improper Starboard Escape Pods"
	icon_state = "yellow"

/area/ship/scrap/broken1
	name = "\improper Robotic Maintenance"
	req_access = list(access_robotics)
	icon_state = "green"

/area/ship/scrap/broken2
	name = "\improper Auxiliary EVA"
	icon_state = "yellow"

/area/ship/scrap/gambling
	name = "\improper Compartment 1-C"
	icon_state = "cave"

/area/ship/scrap/maintenance
	name = "\improper Maintenance Compartments"
	icon_state = "amaint"

/area/ship/scrap/maintenance/hallway
	name = "\improper Maintenance Corridors"

/area/ship/scrap/maintenance/lower
	name = "\improper Lower Deck Maintenance Compartments"
	icon_state = "sub_maint_aft"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/scrap/maintenance/storage
	name = "\improper Tools Storage"
	icon_state = "engineering_storage"
	req_access = list(access_engine)

/area/ship/scrap/maintenance/techstorage
	name = "\improper Parts Storage"
	icon_state = "engineering_supply"
	req_access = list(access_engine)

/area/ship/scrap/maintenance/eva
	name = "\improper EVA Storage"
	icon_state = "eva"
	req_access = list(access_engine)

/area/ship/scrap/maintenance/engineering
	name = "\improper Engineering Bay"
	icon_state = "engineering_supply"
	req_access = list(access_engine)

/area/ship/scrap/maintenance/atmos
	name = "\improper Atmospherics Compartment"
	icon_state = "atmos"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambiatm1.ogg')
	req_access = list(access_engine)

/area/ship/scrap/maintenance/power
	name = "\improper Power Compartment"
	icon_state = "engine_smes"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')
	req_access = list(access_engine)

/area/ship/scrap/maintenance/engine
	icon_state = "engine"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')
	req_access = list(access_engine)

/area/ship/scrap/maintenance/engine/aft
	name = "\improper Main Engine Bay"

/area/ship/scrap/maintenance/engine/port
	name = "\improper Port Thruster"

/area/ship/scrap/maintenance/engine/starboard
	name = "\improper Starboard Thruster"

/area/ship/scrap/maintenance/engine/teleporter
	name = "\improper Bearcat Teleporter"

/area/ship/scrap/maintenance/dronebay
	name = "\improper Drone Bay"
	req_access = list(access_heads)
	icon_state = "yellow"

/area/ship/scrap/command/hallway
	name = "\improper Command Deck"
	icon_state = "centcom"
	req_access = list(access_heads)

/area/ship/scrap/command/bridge
	name = "\improper Bridge"
	icon_state = "bridge"
	req_access = list(access_heads)

/area/ship/scrap/command/captain
	name = "\improper Captain's Quarters"
	icon_state = "captain"
	req_access = list(access_captain)

/area/ship/scrap/comms
	name = "\improper Communications Relay"
	icon_state = "tcomsatcham"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/signal.ogg','sound/ambience/sonar.ogg')

/area/ship/scrap/security
	name = "\improper Security - Lobby"
	icon_state = "red"

/area/ship/scrap/security/brig
	name = "\improper Security - Brig"
	icon_state = "sec_prison"
	req_access = list(access_brig)

/area/ship/scrap/security/enforcer
	name = "\improper Security - Office"
	req_access = list(access_security)
	icon_state = "brig"

/area/ship/scrap/shuttle/outgoing
  name = "\improper Junebug"
  icon_state = "tcomsatcham"

/area/ship/scrap/shuttle/lift
  name = "\improper Cargo Lift"
  icon_state = "shuttle3"
  base_turf = /turf/simulated/open

//Centcomm

/area/shuttle/transport1/centcom
	icon_state = "shuttle"
	name = "\improper Transport Shuttle Centcom"

/area/centcom/control
	name = "\improper Centcom Control"

/area/centcom/creed
	name = "Creed's Office"

/area/centcom/evac
	name = "\improper Centcom Emergency Shuttle"

/area/centcom/ferry
	name = "\improper Centcom Transport Shuttle"

/area/centcom/living
	name = "\improper Centcom Living Quarters"

/area/centcom/suppy
	name = "\improper Centcom Supply Shuttle"

/area/centcom/test
	name = "\improper Centcom Testing Facility"

/area/shuttle/administration/centcom
	name = "\improper Administration Shuttle"
	icon_state = "shuttlered"
	req_access = list(access_cent_general)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/prison/solitary
	name = "Solitary Confinement"
	icon_state = "brig"
	req_access = list(access_brig)

//Merchant

/area/shuttle/merchant/home
	name = "\improper Merchant Vessel"
	icon_state = "shuttlegrn"
	req_access = list(access_merchant)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/merchant_station
	name = "\improper Merchant Station"
	icon_state = "LP"
	req_access = list(access_merchant)

// ACTORS GUILD
/area/acting
	name = "\improper Centcom Acting Guild"
	icon_state = "red"
	dynamic_lighting = 0
	requires_power = 0

/area/acting/backstage
	name = "\improper Backstage"

/area/acting/stage
	name = "\improper Stage"
	dynamic_lighting = 1
	icon_state = "yellow"

// Thunderdome

/area/tdome
	name = "\improper Thunderdome"
	icon_state = "thunder"
	requires_power = 0
	dynamic_lighting = 0
	sound_env = ARENA
	req_access = list(access_cent_thunder)

/area/tdome/tdome1
	name = "\improper Thunderdome (Team 1)"
	icon_state = "green"

/area/tdome/tdome2
	name = "\improper Thunderdome (Team 2)"
	icon_state = "yellow"

/area/tdome/tdomeadmin
	name = "\improper Thunderdome (Admin.)"
	icon_state = "purple"

/area/tdome/tdomeobserve
	name = "\improper Thunderdome (Observer.)"
	icon_state = "purple"
