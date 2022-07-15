--
-- Created by IntelliJ IDEA.
-- User: Ville Koskela
-- Date: 20.11.2012
-- Time: 9:41
--

-- Tournament themes

theme_tatooine_tournament = {

	loadListGroup = {"THEME_TATOOINE_TOURNAMENT", "THEME_TATOOINE_COMMON"},
	texture = "TOURNAMENT_TAT_GROUND_TEXTURE",
	textureScale = 1.875,
	music = "ambience_tatooine",

	musicVolume = 1,
	levelFailedSound = "level fail ingame",
	levelStartSound = "level_start_military",
	levelFailedScreenSound = "pig_vader_laughing",

	--gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	--gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",

	--gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	--gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",

	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	bgLayers = {

				{sprite="TOURNAMENT_TAT_BG1_SKY", zDistance=0, scale=0.8, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 170, elements={ amount = 0}},
				{sprite="TOURNAMENT_TAT_BG2_WALL", zDistance=0.45, scale=0.4, yMult = 0.45, offsetX=0, offsetY=140, scaleSpeed=0.5},
				{sprite="TOURNAMENT_TAT_BG3_SAND", zDistance=0.65, scale=0.8, yMult = 0.45, offsetX=0, offsetY=200, scaleSpeed=0.6},
			},

	 fgLayers = {
		{ "THEME_TATOOINE_TOURNAMENT", "TOURNAMENT_TAT_FG_COMPO", 1.2, 2.0,},
	 },

	-- These color values are probably not needed in Space
	skyColor = { r = 204, g = 178, b = 196 },
	groundColor = { r = 184, g = 142, b = 107 },

}


theme_bespin_spacetournament_1 = {

	loadListGroup = {"THEME_BESPIN_SPACETOURNAMENT_1"},
	--compoSpriteGroup = "THEME_TATOOINE",
	texture = "THEME_BESPIN_SPACETOURNAMENT_1_TEXTURE_1",
	textureScale = 1.875,
	music = "ambience_deathstar_space",
	
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
				{sprite="THEME_BESPIN_PARALLAX_1", zDistance=0, scale=1.02, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
				{sprite="THEME_BESPIN_PARALLAX_2", zDistance=0.4, scale=1.02, scaleSpeed = 0.02, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0, elements={ amount = 0}},
			},

	 fgLayers = {
				--{ "THEME_TATOOINE_LUKES_HOME_1", "LUKES_HOME_1_FG_STONES", 1.2, 2.0,},
	 },

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 0, g = 0, b = 0 },	

}
