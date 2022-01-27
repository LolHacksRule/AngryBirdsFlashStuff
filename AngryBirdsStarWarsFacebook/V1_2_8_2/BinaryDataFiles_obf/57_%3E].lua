
-- TATOOINE THEMES --

theme_tatooine_lukes_home_1 = {

	loadListGroup = {"THEME_TATOOINE_LUKES_HOME_1", "THEME_TATOOINE_COMMON"},
	--compoSpriteGroup = "THEME_TATOOINE",
	texture = "THEME_TATOOINE_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_tatooine",
	
	musicVolume = 1,
	levelFailedSound = "level fail ingame",
	levelStartSound = "level_start_military",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = {  

				{sprite="THEME_TATOOINE_LUKES_HOME_BG_1", zDistance=0, scale=1.02, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = -10, offsetY = -80, elements={ amount = 0}},
				{sprite="LUKES_HOME_PARALLAX_2", zDistance=0.2, scale=0.8, yMult = 0, elements={randomRotation = false, amount = 0, velX = 0.1, },  offsetX=0, offsetY=200, scaleSpeed=0.1},
				{sprite="LUKES_HOME_PARALLAX_3", zDistance=0.4, scale=0.8, yMult = 0, elements={randomRotation = false, amount = 0, velX = 0.1, },  offsetX=0, offsetY=150, scaleSpeed=0.1},
			},

	 fgLayers = {
		{ "THEME_TATOOINE_LUKES_HOME_1", "LUKES_HOME_1_FG_STONES", 1.2, 2.0,},
	 },

	-- These color values are probably not needed in Space
	skyColor = { r = 198, g = 119, b = 90 },
	groundColor = { r = 133, g = 67, b = 43 },	

}

theme_tatooine_lukes_home_2 = {

	loadListGroup = {"THEME_TATOOINE_LUKES_HOME_2", "THEME_TATOOINE_COMMON"},
	--compoSpriteGroup = "THEME_TATOOINE",
	texture = "THEME_TATOOINE_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_tatooine",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
				{sprite="THEME_TATOOINE_LUKES_HOME_3_BG_1", zDistance=0, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = -100, elements={ amount = 0}},
				--{sprite="LUKES_HOME_2_PARALLAX_4", zDistance=0.05, scale=1, yMult=0, elements={w= 0.5, h= 0.5, amount = 0},  offsetX=-65, offsetY=450, scaleSpeed=0},
				{sprite="LUKES_HOME_2_PARALLAX_1", zDistance=0.1, scale=1, yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, velX = 0.1, }, offsetY=420, scaleSpeed=0.2},	--
				{sprite="THEME_TATOOINE_LUKES_HOME_2_PARALLAX_2", zDistance=0.15, scale=1.1, xMult = 1, yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, }, offsetX=0, offsetY=500, scaleSpeed=0.5},	--
	},

	fgLayers = {
			{ "THEME_TATOOINE_LUKES_HOME_2", "LUKES_HOME_FG_STONES", 1.2, 2.0,},
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 168, g = 98, b = 73 },
	groundColor = { r = 93, g = 32, b = 20 }, -- this defines fill color for foreground layer
}

theme_tatooine_lukes_home_3 = {

	loadListGroup = {"THEME_TATOOINE_LUKES_HOME_2", "THEME_TATOOINE_COMMON"},
	-- compoSpriteGroup = "THEME_TATOOINE",
	texture = "THEME_TATOOINE_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_tatooine",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
				{sprite="THEME_TATOOINE_LUKES_HOME_3_BG_1", zDistance=0, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = -10, elements={ amount = 0}},
				{sprite="LUKES_HOME_3_PARALLAX_1", zDistance=0.05, scale=1, yMult=0, elements={w= 0.5, h= 0.5, amount = 0},  offsetX=0, offsetY=440, scaleSpeed=0},
				{sprite="LUKES_HOME_3_PARALLAX_2", zDistance=0.1, scale=1, yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, velX = 0.1, },  offsetX=0, offsetY=500, scaleSpeed=0},	--
				--{sprite="THEME_TATOOINE_LUKES_HOME_3_PARALLAX_3", zDistance=0.3, scale=1.1, xMult = 1, yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, }, offsetX=0, offsetY=520, scaleSpeed=0.5},	--
			
	},

	fgLayers = {
				{ "THEME_TATOOINE_LUKES_HOME_2", "LUKES_HOME_FG_STONES", 1.2, 2.0,},
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 179, g = 86, b = 64 },
	groundColor = { r = 93, g = 32, b = 20 },
}


theme_tatooine_mos_eisley_1 = {

	loadListGroup = {"THEME_MOS_EISLEY_1", "THEME_TATOOINE_COMMON"},
	--compoSpriteGroup = "THEME_TATOOINE",
	texture = "THEME_TATOOINE_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_tatooine",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
				{sprite="THEME_MOS_EISLEY_SKY", zDistance=0, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = -10, elements={ amount = 0}},
				{sprite="THEME_MOS_EISLEY_PARALLAX_1", zDistance=0.1, scale=1.2, yMult=0, elements={w= 0.5, h= 0.5, amount = 0},  offsetX=-60, offsetY=405, scaleSpeed=0},
				--{sprite="THEME_MOS_EISLEY_PARALLAX_2", zDistance=0.15, scale=1.1, yMult = 0, elements={randomRotation = false, amount = 0, velX = 0.1, },  offsetX=-250, offsetY=400, scaleSpeed=0.1},
				{sprite="THEME_MOS_EISLEY_PARALLAX_2", zDistance=0.2, scale=1.12, xMult = 1, yMult = 0, elements={randomRotation = false, amount = 0, }, offsetX=0, offsetY=490, scaleSpeed=0.2},
	},

	fgLayers = {
		{ "THEME_MOS_EISLEY_1", "MOS_EISLEY_FG_STONES", 1.1, 3.0,},
	 
	},

	-- These color values are probably not needed in Space

	skyColor = { r = 209, g = 142, b = 89 },
	groundColor = { r = 211, g = 118, b = 71 },
}

theme_mos_eisley_2 = {

	loadListGroup = {"THEME_MOS_EISLEY_1", "THEME_TATOOINE_COMMON"},
	--compoSpriteGroup = "THEME_TATOOINE",
	texture = "THEME_TATOOINE_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_tatooine",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
				{sprite="THEME_MOS_EISLEY_SKY", zDistance=0, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = -10, elements={ amount = 0}},
				{sprite="THEME_MOS_EISLEY_2_PARALLAX_1", zDistance=0.1, scale=1.2, yMult=0, elements={w= 0.5, h= 0.5, amount = 0},  offsetX=-90, offsetY=400, scaleSpeed=0},
				--{sprite="THEME_MOS_EISLEY_PARALLAX_2", zDistance=0.15, scale=1.1, yMult = 0, elements={randomRotation = false, amount = 0, velX = 0.1, },  offsetX=-250, offsetY=400, scaleSpeed=0.1},
				{sprite="THEME_MOS_EISLEY_2_PARALLAX_2", zDistance=0.2, scale=1.27, xMult = 1, yMult = 0, elements={randomRotation = false, amount = 0, }, offsetX=-90, offsetY=410, scaleSpeed=0.2},
	},

	fgLayers = {
		{ "THEME_MOS_EISLEY_1", "MOS_EISLEY_FG_STONES", 1.1, 3.0,},
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 251, g = 181, b = 119 },
	groundColor = { r = 211, g = 118, b = 70 },
}

theme_tatooine_space_2 = {

	loadListGroup = {"THEME_TATOOINE_HIGH_ORBIT_1", "THEME_TATOOINE_COMMON"},
	--compoSpriteGroup = "THEME_TATOOINE",
	texture = "THEME_TATOOINE_COMMON_TEXTURE_2",
	textureScale = 1.875,
	music = "ambience_deathstar_space",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
		{ sprite="THEME_STARFIELD_COMPO_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
		{sprite="THEME_TATOOINE_HIGH_ORBIT_PLANET", zDistance=0.15, scale=1.09, bLoop = false, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=1100, offsetY=450, scaleSpeed=0.05},
	--asteroids
			{ sprite="", zDistance=0.5, scale=0.6, scaleSpeed = 1, angleMult=0, xMult=1, yMult=1, offsetX = 0, offsetY = 0, elements={w=0.1, h=0.1, x=0.05, y=0.0, randomRotation = true, variation = 0.3, scale = 1, amount = 30, velX = 0.27, sprites = {"THEME_TATOOINE_ASTEROID_1", "THEME_TATOOINE_ASTEROID_2", "THEME_TATOOINE_ASTEROID_3"}}},

	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 219, g = 59, b = 18 },
}

theme_tatooine_space_3 = {

	loadListGroup = {"THEME_TATOOINE_COMMON", "THEME_DEATHSTAR_SPACE_1"},
	--compoSpriteGroup = "THEME_TATOOINE",
	texture = "THEME_TATOOINE_COMMON_TEXTURE_2",
	textureScale = 1.875,
	music = "ambience_deathstar_space",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
			{ sprite="THEME_STARFIELD_COMPO_1", zDistance=0, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
			{sprite="THEME_DEATH_STAR_MEDIUM_1", zDistance=0, scale=0.25, bLoop = false, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=200, offsetY=250, scaleSpeed=0.0},
	--asteroids
			{ sprite="", zDistance=0.5, scale=0.6, scaleSpeed = 1, angleMult=0, xMult=1, yMult=1, offsetX = 0, offsetY = 0, elements={w=0.1, h=0.1, x=0.05, y=0.0, randomRotation = true, variation = 0.3, scale = 1, amount = 30, velX = 0.27, sprites = {"THEME_TATOOINE_ASTEROID_1", "THEME_TATOOINE_ASTEROID_2", "THEME_TATOOINE_ASTEROID_3"}}},

	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 219, g = 59, b = 18 },
}
	
-- PLAIN STARFIELD --

theme_space_starfield_1 = {

	loadListGroup = {"THEME_TATOOINE_LOW_ORBIT_1", "THEME_TATOOINE_COMMON"},
	--compoSpriteGroup = "THEME_TATOOINE",
	texture = "THEME_TATOOINE_COMMON_TEXTURE_2",
	textureScale = 1.875,
	music = "ambience_deathstar_space",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
			{ sprite="THEME_STARFIELD_COMPO_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
	--asteroids
			{ sprite="", zDistance=0.5, scale=0.6, scaleSpeed = 1, angleMult=0, xMult=1, yMult=1, offsetX = 0, offsetY = 0, elements={w=0.1, h=0.1, x=0.05, y=0.0, randomRotation = true, variation = 0.3, scale = 1, amount = 30, velX = 0.27, sprites = {"THEME_TATOOINE_ASTEROID_1", "THEME_TATOOINE_ASTEROID_2", "THEME_TATOOINE_ASTEROID_3"}}},
	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0},
	groundColor = { r = 219, g = 59, b = 18 },
}

-- DEATHSTAR THEMES --

theme_deathstar_space_1 = {

	loadListGroup = {"THEME_DEATHSTAR_SPACE_1", "THEME_DEATHSTAR_COMMON"},
	--compoSpriteGroup = "THEME_DEATHSTAR_SPACE_1",
	texture = "THEME_DEATHSTAR_COMMON_TEXTURE_2",
	textureScale = 1.875,
	music = "ambience_deathstar_space",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
			{ sprite="THEME_STARFIELD_COMPO_1", zDistance=0, scale=1.01, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
			{sprite="THEME_DEATH_STAR_MEDIUM_1", zDistance=0, scale=0.45, bLoop = false, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=200, offsetY=250, scaleSpeed=0.0},
	-- asteroids
			{ sprite="", zDistance=0.5, scale=0.6, scaleSpeed = 1, angleMult=0, xMult=1, yMult=1, offsetX = 0, offsetY = 0, elements={w=0.1, h=0.1, x=0.05, y=0.0, randomRotation = true, variation = 0.3, scale = 1, amount = 30, velX = 0.27, sprites = {"THEME_DEATH_STAR_ASTEROID_1", "THEME_DEATH_STAR_ASTEROID_2", "THEME_DEATH_STAR_ASTEROID_3"}}},

			--{ sprite="THEME_BATTLE_FLEET", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = -600, offsetY = -300, elements={ amount = 0}},
            --{ sprite="", zDistance=0.01, scale=0.5, angleMult=0, xMult=1, repopulationTimer=0.2, repopulate=true, elements={bLoop=false, isAnimation = true, animDelay = 0.1, startingDelay = 0, w=0.1, h=0.02, x=0.5, y=-0.01, scale=1, randomRotation = false, variation = 0, amount = 10, velX = 50, sprites = {"BATTLE_LASER_GREEN_1", "BATTLE_LASER_GREEN_2", "BATTLE_LASER_GREEN_3", "BATTLE_LASER_GREEN_4", "BATTLE_LASER_GREEN_5"}}, bgLayer=true, scaleSpeed=0.01},
			--{ sprite="", zDistance=0.01, scale=0.5, angleMult=0, xMult=1, repopulationTimer=0.2, repopulate=true, elements={bLoop=false, isAnimation = true, animDelay = 0.1, startingDelay = 0, w=0.1, h=0.02, x=-0, y=-0.01, scale=1, randomRotation = false, variation = 0, amount = 10, velX = -50, sprites = {"BATTLE_LASER_RED_1", "BATTLE_LASER_RED_2", "BATTLE_LASER_RED_3", "BATTLE_LASER_RED_4", "BATTLE_LASER_RED_5"}}, bgLayer=true, scaleSpeed=0.01},
			--{ sprite="", zDistance=0.01, scale=0.7, angleMult=0, xMult=1, repopulationTimer=0.1, repopulate=true, elements={bLoop=false, isAnimation = true, animDelay = 0.1, startingDelay = 0, w=0.1, h=0.05, x=0.5, scale=1, randomRotation = false, variation = 0, amount = 1, velX = 0, sprites = {"PARTICLE_C3PO_EXPLOSION_1", "PARTICLE_C3PO_EXPLOSION_2", "PARTICLE_C3PO_EXPLOSION_3", "PARTICLE_C3PO_EXPLOSION_4", "PARTICLE_C3PO_EXPLOSION_5", "PARTICLE_C3PO_EXPLOSION_6", "PARTICLE_C3PO_EXPLOSION_7"}}, bgLayer=true, scaleSpeed=0.01},
	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0},
	groundColor = { r = 219, g = 59, b = 18 },
}

theme_deathstar_space_2 = {

	loadListGroup = {"THEME_DEATHSTAR_SPACE_1", "THEME_DEATHSTAR_COMMON"},
--	compoSpriteGroup = "THEME_DEATHSTAR",
	texture = "THEME_DEATHSTAR_COMMON_TEXTURE_2",
	textureScale = 1.875,
	music = "ambience_deathstar_space",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
				{ sprite="THEME_STARFIELD_COMPO_1", zDistance=0, scale=1.02, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
				{sprite="THEME_DEATH_STAR_MEDIUM_1", zDistance=0, scale=1, bLoop = false, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=250, offsetY=170, scaleSpeed=0.0},
	-- asteroids
			{ sprite="", zDistance=0.5, scale=0.6, scaleSpeed = 1, angleMult=0, xMult=1, yMult=1, offsetX = 0, offsetY = 0, elements={w=0.1, h=0.1, x=0.05, y=0.0, randomRotation = true, variation = 0.3, scale = 1, amount = 30, velX = 0.27, sprites = {"THEME_DEATH_STAR_ASTEROID_1", "THEME_DEATH_STAR_ASTEROID_2", "THEME_DEATH_STAR_ASTEROID_3"}}},

	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 219, g = 59, b = 18 },
}

theme_deathstar_hangar_1 = {

	loadListGroup = {"THEME_DEATHSTAR_HANGAR_1", "THEME_DEATHSTAR_COMMON"},
	--compoSpriteGroup = "THEME_DEATHSTAR",
	texture = "THEME_DEATHSTAR_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_deathstar",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 

		{sprite="THEME_STARFIELD_COMPO_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
		{sprite="DEATHSTAR_HANGAR_PARALLAX_1", zDistance=0.25, scale=1.2, bLoop=false, offsetX=1100, scaleSpeed = 0, angleMult=0, xMult=0.02, yMult=0, offsetY = -80, elements={ amount = 0}},
	},
	
	fgLayers = {

	 { "THEME_DEATHSTAR_HANGAR_1", "DEATHSTAR_HANGAR_FG", 1.1, 3.0,},
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 11, g = 13, b = 24 },
}


theme_deathstar_shaft_1 = {

	loadListGroup = {"THEME_DEATHSTAR_SHAFT_1", "THEME_DEATHSTAR_COMMON"},
	--compoSpriteGroup = "THEME_DEATHSTAR",
	texture = "THEME_DEATHSTAR_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_deathstar",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
				{sprite="DEATHSTAR_SHAFT_BG_1", bloop=false, zDistance=0.1, scale=1.02, scaleSpeed = 0.1, angleMult=0, xMult=0, yMult=0, offsetX = 0, offsetY = -20, elements={ amount = 0}},
				{sprite="DEATHSTAR_SHAFT_PARALLAX_1", bloop=false, zDistance=0.2, scale=1.05, xMult = 0.1, angleMult=0, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=0, offsetY=-25, scaleSpeed=0.1},
				{sprite="DEATHSTAR_SHAFT_PARALLAX_2", bloop=false, zDistance=0.3, scale=1.03, xMult = 0.1, angleMult=0, yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, velX = 0.1}, offsetX=0, offsetY=-40, scaleSpeed=0.1},			
	},

	fgLayers = {
		{ "THEME_DEATHSTAR_SHAFT_1", "THEME_DEATHSTAR_SHAFT_FG_BOTTOM_1", 1.1, 3.0,},
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 11, g = 13, b = 24 },
}


theme_deathstar_surface_1 = {

	loadListGroup = {"THEME_DEATHSTAR_SURFACE_1", "THEME_DEATHSTAR_COMMON"},
	--compoSpriteGroup = "THEME_DEATHSTAR",
	texture = "THEME_DEATHSTAR_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_deathstar_space",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
			{ sprite="THEME_STARFIELD_COMPO_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
			{ sprite="", zDistance=1, scale=1, yMult=0, xMult=0.3, offsetX = 0, offsetY = 0, elements={w=0.3, h=0.2, randomRotation = true, variation = 0.1, amount = 100, velX = 0.27, sprites = {"THEME_DEATH_STAR_ASTEROID_1", "THEME_DEATH_STAR_ASTEROID_2", "THEME_DEATH_STAR_ASTEROID_3"}}, scaleSpeed=2},
			{sprite="THEME_DEATHSTAR_SURFACE_PARALLAX_1", zDistance=0.3 , scale=1.4, bLoop = false, xMult = 0.4, angleMult=0, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=1100, offsetY=500, scaleSpeed=0.1},
	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 219, g = 59, b = 18 },
}


theme_deathstar_trench_1 = {

	loadListGroup = {"THEME_DEATHSTAR_TRENCH_1", "THEME_DEATHSTAR_COMMON"},
	--compoSpriteGroup = "THEME_TATOOINE",
	texture = "THEME_DEATHSTAR_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_boss",
	
	musicVolume = 1,
	levelStartSound = "",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "",
	gravitySliceBoxSpriteFaded = "",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = {  
				{ sprite="THEME_STARFIELD_COMPO_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
				{sprite="THEME_DEATH_STAR_TRENCH_TURRET_1", velX = -80, zDistance=0.18, scale=0.8, xMult = 0, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=-0, offsetY=135, scaleSpeed=0.02},
				{sprite="THEME_DEATH_STAR_TRENCH_PARALLAX_1", velX = -100, zDistance=0.2, scale=0.8, xMult = 0, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=-100, offsetY=50, scaleSpeed=0.02},
				{sprite="THEME_DEATH_STAR_TRENCH_PARALLAX_2", velX = -200, zDistance=0.3, scale=1, xMult = 0,  yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, velX = 0.1}, offsetX=-300, offsetY=560, scaleSpeed=0.2},
				{sprite="THEME_DEATH_STAR_TRENCH_PARALLAX_3", velX = -300, zDistance=0.72, scale=0.6, xMult = 0,  yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, velX = 0.1,}, offsetX=-0, offsetY=570, scaleSpeed=1 },

	},

	fgLayers = {

	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 219, g = 59, b = 18 },
}


-- THEME BONUS --

theme_robot_galaxy_1 = {

	loadListGroup = {"THEME_ROBOT_GALAXY_1"},
	--compoSpriteGroup = "THEME_TATOOINE",
	texture = "THEME_ROBOT_GALAXY_1_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_deathstar_space",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
		{ sprite="THEME_STARFIELD_COMPO_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
		{sprite="THEME_ROBOT_GALAXY_SUN_1", zDistance=0.1, scale=1, yMult=0, bLoop = false, elements={w= 0, h= 0, amount = 0},  offsetX=500, offsetY=100, scaleSpeed=0},

	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 219, g = 59, b = 18 },
}

-- DAGOBAH THEMES --

theme_dagobah_surface_1 = {

	loadListGroup = {"THEME_DAGOBAH_SURFACE_1", "THEME_DAGOBAH_COMMON"},
	compoSpriteGroup = "THEME_DAGOBAH_SURFACE_1",
	texture = "THEME_DAGOBAH_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_dagobah",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = {  
				{sprite="DAGOBAH_PARALLAX_1", zDistance=0, scale=1.02, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 140, offsetY = -10, elements={ amount = 0}},
				--{ sprite="", zDistance=0.05, scale=2, yMult=0, xMult=1, offsetX = 100, offsetY = -150, elements={w=0.2, h=0.1, randomRotation = true, variation = 1, amount = 70, velX = -0.2, velY = -1, sprites = {"DAGOBAH_FIREFLY_1", "DAGOBAH_FIREFLY_2", "DAGOBAH_FIREFLY_3", "DAGOBAH_FIREFLY_4"}}, scaleSpeed=2},
				{sprite="DAGOBAH_PARALLAX_2", zDistance=0.1, scale=1.1, yMult=0, elements={w= 0.5, h= 0.5, amount = 0},  offsetX=-0, offsetY=-80, scaleSpeed=0},
				--{sprite="THEME_DAGOBAH_PARALLAX_FOG", zDistance=0.15, scale=1.3, yMult = 0, velX = -20, elements={randomRotation = false, amount = 0, velX = 0.1, },  offsetX=-250, offsetY=565, scaleSpeed=0.1},
				--{ sprite="", zDistance=0.16, scale=1.5, yMult=0, xMult=1, offsetX = 100, offsetY = -150, elements={w=0.2, h=0.1, randomRotation = true, variation = 1, amount = 70, velX = -0.4, velY = -2, sprites = {"DAGOBAH_FIREFLY_1", "DAGOBAH_FIREFLY_2", "DAGOBAH_FIREFLY_3", "DAGOBAH_FIREFLY_4"}}, scaleSpeed=2},
				--{ sprite="", zDistance=0.17, scale=1.5, yMult=0, xMult=1, offsetX = 100, offsetY = -150, elements={w=0.2, h=0.1, randomRotation = true, variation = 1, amount = 70, velX = 0.2, velY = -3, sprites = {"DAGOBAH_FIREFLY_1", "DAGOBAH_FIREFLY_2", "DAGOBAH_FIREFLY_3", "DAGOBAH_FIREFLY_4"}}, scaleSpeed=2},
				{sprite="DAGOBAH_PARALLAX_4", zDistance=0.18, scale=1.1, yMult=0, elements={w= 1.0, h= 1.0, amount = 0},  offsetX=0, offsetY=-80, scaleSpeed=0.1},
			},

	fgLayers = {
		{ "THEME_DAGOBAH_SURFACE_1", "DAGOBAH_FOREGROUND", 1.5, 1.5,}, -- 1.5, 5.0,},
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 20, g = 18, b = 20 },
}

theme_dagobah_high_orbit_1 = {

	loadListGroup = {"THEME_DAGOBAH_HIGH_ORBIT_1", "THEME_DAGOBAH_COMMON"},
	--compoSpriteGroup = "THEME_DEATHSTAR_SPACE_1",
	texture = "THEME_DAGOBAH_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_deathstar_space",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
			{ sprite="THEME_STARFIELD_COMPO_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
			{sprite="THEME_DAGOBAH_HIGH_ORBIT_PLANET", zDistance=0.3, scale=1.09, bLoop = false, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=1100, offsetY=450, scaleSpeed=1},
	-- asteroids
			{ sprite="", zDistance=0.5, scale=0.6, scaleSpeed = 1, angleMult=0, xMult=1, yMult=1, offsetX = 0, offsetY = 0, elements={w=0.1, h=0.1, x=0.05, y=0.0, randomRotation = true, variation = 0.3, scale = 1, amount = 30, velX = 0.27, sprites = {"THEME_DAGOBAH_ASTEROID_1", "THEME_DAGOBAH_ASTEROID_2", "THEME_DAGOBAH_ASTEROID_3"}}},
	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0},
	groundColor = { r = 219, g = 59, b = 18 },
	}
	
	
	
	
-- HOTH THEMES --

theme_hoth_surface_1 = {

	loadListGroup = {"THEME_HOTH_SURFACE_1", "THEME_HOTH_COMMON"},
	--compoSpriteGroup = "THEME_DAGOBAH_SURFACE_1",
	texture = "THEME_HOTH_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_dagobah",
	
	musicVolume = 1,
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = {  
				{sprite="HOTH_BACKGROUND", zDistance=0, scale=1.02, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
			},

	fgLayers = {
		{ "THEME_HOTH_SURFACE_1", "HOTH_FOREGROUND", 1.2, 3.0,}, -- 1.5, 5.0,},
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 161, g = 215, b = 239 },
	groundColor = { r = 217, g = 250, b = 255 },
}

theme_hoth_high_orbit_1 = {

	loadListGroup = {"THEME_HOTH_HIGH_ORBIT_1", "THEME_HOTH_COMMON"},
	--compoSpriteGroup = "THEME_DEATHSTAR_SPACE_1",
	texture = "THEME_HOTH_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_deathstar_space",
	
	musicVolume = 1,
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
			{ sprite="THEME_STARFIELD_COMPO_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
			{sprite="THEME_HOTH_HIGH_ORBIT_PARALLAX_1", zDistance=0.3, scale=1.09, bLoop = false, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=1100, offsetY=450, scaleSpeed=1},
	-- asteroids
			--{ sprite="", zDistance=0.5, scale=0.6, scaleSpeed = 1, angleMult=0, xMult=1, yMult=1, offsetX = 0, offsetY = 0, elements={w=0.1, h=0.1, x=0.05, y=0.0, randomRotation = true, variation = 0.3, scale = 1, amount = 30, velX = 0.27, sprites = {"THEME_DAGOBAH_ASTEROID_1", "THEME_DAGOBAH_ASTEROID_2", "THEME_DAGOBAH_ASTEROID_3"}}},
	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0},
	groundColor = { r = 219, g = 59, b = 18 },
}

	
	
-- MENU THEMES --

theme_menu_tatooine_space_1 = {

	loadListGroup = {"THEME_TATOOINE_HIGH_ORBIT_1", "THEME_TATOOINE_COMMON"},
	--compoSpriteGroup = "THEME_TATOOINE",
	texture = "THEME_TATOOINE_COMMON_TEXTURE_2",
	textureScale = 1.875,
	music = "ambience_space",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
			{sprite="THEME_STARFIELD_MENU_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}, offsetY = 0},
			{sprite="TATOOINE_HIGH_ORBIT_1", zDistance=0.1, scale=1.09, yMult=0, bLoop = false, elements={w= 0, h= 0, amount = 0}, offsetX=0, offsetY=300, scaleSpeed=0.02},
	--asteroids
			{ sprite="", zDistance=0.5, scale=0.6, scaleSpeed = 1, angleMult=0, xMult=1, yMult=1, offsetX = 0, offsetY = 0, elements={w=0.1, h=0.1, x=0.05, y=0.0, randomRotation = true, variation = 0.3, scale = 1, amount = 30, velX = 0.27, sprites = {"THEME_TATOOINE_ASTEROID_1", "THEME_TATOOINE_ASTEROID_2", "THEME_TATOOINE_ASTEROID_3"} }},
	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 219, g = 59, b = 18 },
}

theme_menu_deathstar_surface_1 = {

	loadListGroup = {"THEME_DEATHSTAR_SURFACE_1", "THEME_DEATHSTAR_COMMON"},
	--compoSpriteGroup = "THEME_DEATHSTAR",
	texture = "THEME_DEATHSTAR_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_space",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
			{sprite="THEME_STARFIELD_MENU_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
			{sprite="THEME_DEATHSTAR_SURFACE_PARALLAX_1", zDistance=0.3 , scale=1.3, bLoop = false, xMult = 0.4, angleMult=0, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=1100, offsetY=550, scaleSpeed=0.1},
	-- asteroids
			{ sprite="", zDistance=0.5, scale=0.6, scaleSpeed = 1, angleMult=0, xMult=1, yMult=1, offsetX = 0, offsetY = 0, elements={w=0.1, h=0.1, x=0.05, y=0.0, randomRotation = true, variation = 0.3, scale = 1, amount = 30, velX = 0.27, sprites = {"THEME_DEATH_STAR_ASTEROID_1", "THEME_DEATH_STAR_ASTEROID_2", "THEME_DEATH_STAR_ASTEROID_3"}}},
	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 219, g = 59, b = 18 },
}

theme_menu_dagobah_high_orbit_1 = {

	loadListGroup = {"THEME_DAGOBAH_HIGH_ORBIT_1", "THEME_DAGOBAH_COMMON"},
	--compoSpriteGroup = "THEME_DEATHSTAR_SPACE_1",
	texture = "THEME_DAGOBAH_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_space",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
			{sprite="THEME_STARFIELD_MENU_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
			{sprite="THEME_DAGOBAH_HIGH_ORBIT_PLANET", zDistance=0.1, scale=1.09, bLoop = false, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=1100, offsetY=450, scaleSpeed=0.02},
	-- asteroids
			{ sprite="", zDistance=0.5, scale=0.6, scaleSpeed = 1, angleMult=0, xMult=1, yMult=1, offsetX = 0, offsetY = 0, elements={w=0.1, h=0.1, x=0.05, y=0.0, randomRotation = true, variation = 0.3, scale = 1, amount = 30, velX = 0.27, sprites = {"THEME_DAGOBAH_ASTEROID_1", "THEME_DAGOBAH_ASTEROID_2", "THEME_DAGOBAH_ASTEROID_3"}}},
	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0},
	groundColor = { r = 219, g = 59, b = 18 },
}

theme_menu_hoth_high_orbit_1 = {

	loadListGroup = {"THEME_HOTH_HIGH_ORBIT_1", "THEME_HOTH_COMMON"},
	--compoSpriteGroup = "THEME_DEATHSTAR_SPACE_1",
	texture = "THEME_HOTH_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_deathstar_space",
	
	musicVolume = 1,
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
			{ sprite="THEME_STARFIELD_MENU_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
			{sprite="THEME_HOTH_HIGH_ORBIT_PARALLAX_1", zDistance=0.3, scale=1.09, bLoop = false, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=1100, offsetY=450, scaleSpeed=1},
	-- asteroids
			--{ sprite="", zDistance=0.5, scale=0.6, scaleSpeed = 1, angleMult=0, xMult=1, yMult=1, offsetX = 0, offsetY = 0, elements={w=0.1, h=0.1, x=0.05, y=0.0, randomRotation = true, variation = 0.3, scale = 1, amount = 30, velX = 0.27, sprites = {"THEME_DAGOBAH_ASTEROID_1", "THEME_DAGOBAH_ASTEROID_2", "THEME_DAGOBAH_ASTEROID_3"}}},
	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0},
	groundColor = { r = 219, g = 59, b = 18 },
}

theme_menu_robot_galaxy_1 = {

	loadListGroup = {"THEME_ROBOT_GALAXY_1"},
	--compoSpriteGroup = "THEME_TATOOINE",
	texture = "THEME_ROBOT_GALAXY_1_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_space",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = {  
		{ sprite="THEME_STARFIELD_MENU_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
		{sprite="THEME_ROBOT_GALAXY_SUN_1", zDistance=0.2, scale=1.1, yMult=0, bLoop = false, elements={w= 0, h= 0, amount = 0},  offsetX=750, offsetY=-140, scaleSpeed=1},

	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 219, g = 59, b = 18 },
}

theme_menu_main_1 = {

	loadListGroup = {"THEME_DEATHSTAR_COMMON"},
	--compoSpriteGroup = "THEME_DEATHSTAR_SPACE_1",
	texture = "THEME_DEATHSTAR_COMMON_TEXTURE_2",
	textureScale = 1.875,
	music = "ambience_deathstar_space",
	
	musicVolume = 1,
	levelStartSound = "level_start_military",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = { 
		{ sprite="THEME_STARFIELD_MENU_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
	-- fighters
			{ sprite="", zDistance=0.05, scale=1, scaleSpeed = 1, angleMult=0, xMult=1, yMult=1, offsetX = 0, offsetY = 0, elements={w=0.1, h=0.07, x=0.05, y=0.0, randomRotation = false, variation = 0.3, scale = 1, amount = 4, velX = -0.2, sprites = {"STAR_DESTROYER_MEDIUM", "STAR_DESTROYER_SMALL"}}},
	-- asteroids
			{ sprite="", zDistance=0.5, scale=0.6, scaleSpeed = 1, angleMult=0, xMult=1, yMult=1, offsetX = 0, offsetY = 0, elements={w=0.1, h=0.1, x=0.05, y=0.0, randomRotation = true, variation = 0.3, scale = 1, amount = 30, velX = 0.27, sprites = {"THEME_DEATH_STAR_ASTEROID_1", "THEME_DEATH_STAR_ASTEROID_2", "THEME_DEATH_STAR_ASTEROID_3"}}},
	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0},
	groundColor = { r = 219, g = 59, b = 18 },
}


theme_deathstar_trench_custom = {
	loadListGroup = {"THEME_DEATHSTAR_TRENCH_CUSTOM", "THEME_DEATHSTAR_COMMON"},
	--compoSpriteGroup = "THEME_TATOOINE",
	texture = "THEME_DEATHSTAR_COMMON_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_boss",
	
	musicVolume = 1,
	levelStartSound = "",
	levelFailedSound = "level fail ingame",
	levelFailedScreenSound = "pig_vader_laughing",

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "",
	gravitySliceBoxSpriteFaded = "",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = {  
				{ sprite="THEME_STARFIELD_COMPO_1", zDistance=0.1, scale=1, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
				{sprite="THEME_DEATH_STAR_TRENCH_1_BACKGROUND", velX = -80, zDistance=0.3, scale=0.8, xMult = 0, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=-0, offsetY=50, scaleSpeed=0.02},
				{sprite="THEME_DEATH_STAR_TRENCH_2_BACKGROUND", velX = -100, zDistance=0.2, scale=0.8, xMult = 0, yMult=0, elements={w= 0, h= 0, amount = 0},  offsetX=-100, offsetY=100, scaleSpeed=0.02},
				{sprite="THEME_DEATH_STAR_TRENCH_3_MIDDLEGROUND", velX = -200, zDistance=0.3, scale=1, xMult = 0,  yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, velX = 0.1}, offsetX=-300, offsetY=560, scaleSpeed=0.2},
				{sprite="THEME_DEATH_STAR_TRENCH_4_FOREGROUND", velX = -300, zDistance=0.72, scale=0.4, xMult = 0,  yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, velX = 0.1,}, offsetX=-0, offsetY=1500, scaleSpeed=0.7 },
	
	},

	fgLayers = {
	 
	},

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 219, g = 59, b = 18 },
}
