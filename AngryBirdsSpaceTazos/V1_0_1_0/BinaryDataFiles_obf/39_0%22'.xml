themedanger = {
	
	loadListGroup = {"THEMEDANGER"},
	--compoSpriteGroup = "THEME_TATOOINE",
	texture = "INGAME_TEXTURE_ICE_1",
	textureScale = 1.875,
	music = "AB_space_ambience_dangerzone",
	
	musicVolume = 1,

	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	bgLayers = {  
--				{sprite="THEME_DANGER_BG_1", zDistance=0.00, scale=1.2, scaleSpeed = 0.66, angleMult=0, xMult=0.02, yMult=0, offsetX = -10, offsetY = -80, elements={ amount = 0}},
		
		--PRALLAX 1
--				{sprite="THEME_DANGER_PARALLAX_1", zDistance=0.05, scale=1, scaleSpeed = 0.2, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0.1, elements={ amount = 0}},
		--PRALLAX 2
--				{sprite="THEME_DANGER_PARALLAX_2", zDistance=0.1, scale=1, scaleSpeed = 0.3, angleMult=0, xMult=0.02, yMult=0, offsetX = 0, offsetY = 0.3, elements={ amount = 0}},
		--PRALLAX 3
--				{sprite="THEME_DANGER_PARALLAX_3", zDistance=0.3, scale=1, scaleSpeed = 0.5, angleMult=0, xMult=0, yMult=0, offsetX = 0, offsetY = 0.6, elements={ amount = 0}},
		--Cube 3
				--{"THEME_2_PARALLAX_2", "", 0.1, 1, {scale= 0.8, randomRotation = true, variation = 0.5, amount = 5, velX = 2.0, sprites = {"THEME_2_PARALLAX_2_CUBE_1", "THEME_2_PARALLAX_2_CUBE_2" }}, bgLayer=false, offsetX=0, offsetY=0.1, scaleSpeed=0.65},	--
		
				{sprite="THEME_DANGER_BG_1", bLoop=true, zDistance=0.1, scale=1.3, scaleSpeed = 0.2, angleMult=0, xMult=0.02, yMult=0.02, offsetX = -10, offsetY = 0, elements={ amount = 0}},

--				{sprite="THEME_DANGER_PARALLAX_1", zDistance=0.05, scale=1, yMult=0, elements={w= 0.5, h= 0.5, amount = 0},  offsetX=0, offsetY=440, scaleSpeed=0},
--				{sprite="THEME_DANGER_PARALLAX_2", zDistance=0.1, scale=1, yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, velX = 0.1, },  offsetX=0, offsetY=500, scaleSpeed=0},	--
--				{sprite="THEME_DANGER_PARALLAX_3", zDistance=0.3, scale=1.1, xMult = 1, yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, }, offsetX=0, offsetY=520, scaleSpeed=0.5},	--
				
	 },

	fgLayers = {},
	--fgLayers = { { "THEME_1_BG_1", "PARALLAX_BACKGROUND_1", 0.0, 0.05 } },

	-- These color values are probably not needed in Space
	skyColor = { r = 0, g = 0, b = 0 },
	groundColor = { r = 19, g = 59, b = 108 },


}

theme1 = {

	loadListGroup = {"THEME_1"},
	compoSpriteGroup = "THEME_1_COMPOSPRITES",
	texture = "INGAME_TEXTURE_SAND_1",
	music = "AB_space_ambience_pigbang",
	
	musicVolume = 1,

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	
	------------------------ 
	--[[
			INSTRUCTIONS
			
		bgLayers: Container of all background layers (drawn behind game elements)
			zDistance: distance to the camera on Z axis (default is 0)
			xMult, yMult: x and y translation multipliers (default is 1)
			angleMult: rotation multiplier; ties rotation to parallax movement (default is 0)
			elements: Table of random elements to populate backgrounds
				w : spawning area width
				h : spawning area height
				variation : Refers to random change to scale of sprite
				amount : Number of elements to create
				sprites : Table containing all posible sprites to use (will be chosen randomely)
	
	
	]]--
	----------------------------
	-- Example animation
	--{ sprite="", zDistance=0.5, scale=0.9, angleMult=0, xMult=1, elements={isAnimation = true, animDelay = 0.2, startingDelay = 2, w=0.5, h=0.5, scale=1, randomRotation = false, variation = 0.1, amount = 9, velX = 0.1, sprites = {"THEME_1_PLANET_1_1", "THEME_1_PLANET_1_2", "THEME_1_PLANET_1_3", "THEME_1_PLANET_1_4"}}, bgLayer=true, scaleSpeed=0.1},
	bgLayers = {  
				{sprite="THEME_1_BG_BASE", bLoop=true, zDistance=0.1, scale=1.3, scaleSpeed = 0.2, angleMult=0, xMult=0.02, yMult=0.02, offsetX = -10, offsetY = 0, elements={ amount = 0}},
				
			--	{sprite="THEME_1_PLANET_1_1", zDistance=0.1, scale=0.5, scaleSpeed = 1, angleMult=0.1, xMult=0, yMult=0, yOffset=0.5, elements={ amount = 0, sprites = {"PARALLAX_STAR_1"}}, bgLayer=true,  offsetY=0},
		--planets 1
			--	{ sprite="", zDistance=0.2, scale=0.6, angleMult=0, yMult=0, xMult=0.3, elements={w=0.1, h=0.1, scale=1, randomRotation = false, variation = 0.1, amount = 3, velX = 0.2, sprites = {"THEME_1_PLANET_1_1", "THEME_1_PLANET_1_2", "THEME_1_PLANET_1_3", "THEME_1_PLANET_1_4"}}, bgLayer=true, scaleSpeed=0.6},
		--clouds 1									 							  
			--	{ sprite="", zDistance=0.2, scale=1, angleMult=0, yMult=0, xMult=0.3, elements={w=0.1, h=0.1, scale=1, randomRotation = false, variation = 0.1, amount = 2, velX = 0.35, sprites = {"THEME_1_CLOUD_1_1", "THEME_1_CLOUD_1_2", "THEME_1_CLOUD_1_3"}}, scaleSpeed=1},
		--parallax 1
			--	{sprite="THEME_1_PARALLAX_1", yMult = 0, zDistance=0.1, scale=1.2, elements={randomRotation = false, variation = 0.1, amount = 0, velX = 0.1, }, offsetY=550, offsetY_PC=550, scaleSpeed=1},	--
		--planets 2
			--	{ sprite="", zDistance=0.3, scale=0.7, yMult=0, xMult=0.3, elements={w=0.1, h=0.1, scale=1, randomRotation = false, variation = 0.1, amount = 2, velX = 0.27, sprites = {"THEME_1_PLANET_2_1", "THEME_1_PLANET_2_2", "THEME_1_PLANET_2_3", "THEME_1_PLANET_2_4"}}, scaleSpeed=0.7},
		--clouds 2
			--	{ sprite="", zDistance=0.4, scale=0.7, yMult=0, xMult=0.3, elements={w=0.3, h=0.05, scale=1, randomRotation = false, variation = 0.1, amount = 2, velX = 0.4, sprites = {"THEME_1_CLOUD_2_1", "THEME_1_CLOUD_2_2", "THEME_1_CLOUD_2_3"}}, offsetY=0, scaleSpeed=0.7},
		--parallax 2
			--	{sprite="THEME_1_PARALLAX_2", zDistance=0.2, scale=1.2, xMult = 1, yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, }, offsetX=0, offsetY=570, offsetY_PC=600, scaleSpeed=2},	--
		--planets 3
			--	{ sprite="", zDistance=0.5, scale=0.7, yMult=0, xMult=0.3, elements={w=0.1, h=0.1, scale=1, randomRotation = false, variation = 0.1, amount = 2, velX = 1, sprites = {"THEME_1_PLANET_3_1", "THEME_1_PLANET_3_2", "THEME_1_PLANET_3_3", "THEME_1_PLANET_3_4"}}, scaleSpeed=1.5},
		--clouds 3
			--{ sprite="", zDistance=0.8, scale=0.7, yMult=0, xMult=0.3, elements={w=0.1, h=0.1, scale=0.7, randomRotation = false, variation = 0.1, amount = 1, velX = 0.8, sprites = {"THEME_1_CLOUD_3_1", "THEME_1_CLOUD_3_2", "THEME_1_CLOUD_3_3"}}, scaleSpeed=1.5},
		--parallax 3
				--{sprite="THEME_1_PARALLAX_3", zDistance=0.3, scale=1.2, elements={randomRotation = false, variation = 0.1, amount = 0, velX = 0.1, sprites = {"THEME_1_PLANET_3_1", "THEME_1_PLANET_3_2", "THEME_1_PLANET_3_3", "THEME_1_PLANET_3_4"}}, yMult = 0, offsetX=0, offsetY=0, scaleSpeed=0.5},	--
			--	{sprite="THEME_1_PARALLAX_3", sprite_PC="THEME_1_PARALLAX_3_LONG_VERSION_PC", zDistance=0.2, scale=1.2, xMult = 1, yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, }, offsetX=0, offsetY=650, offsetY_PC=700, scaleSpeed=2, scaleSpeed_PC=1},	
				--{sprite="THEME_1_PARALLAX_3", sprite_PC="THEME_1_PARALLAX_3_LONG_VERSION_PC", zDistance=0.8, zDistance_PC=1, scale=1, scale_PC=1.2, yMult=0, yMult_PC= 0, xMult = 1, xMult_PC= 1,  elements={randomRotation = false, variation = 0.1, amount = 0, },  offsetX=0, offsetY=550, offsetY_PC=500, scaleSpeed=3, scaleSpeed_PC=0.8}
			},

	 fgLayers = {},
--	fgLayers = { {"THEME_3_PARALLAX_1", "A_THEME_2_PARALLAX_3", 0.1, 1.15, {randomRotation = false, variation = 0.1, amount = 0, velX = 0.1, sprites = {"A_THEME_2_PLANET_3_1", "A_THEME_2_PLANET_3_2", "A_THEME_2_PLANET_3_3", "A_THEME_2_PLANET_3_4"}}, bgLayer=false, offsetX=-0.4, offsetY=0.0, scaleSpeed=0.1}},	
	--fgLayers = { { "THEME_1_BG_1", "PARALLAX_BACKGROUND_1", 0.2, 0.05 } },

	-- These color values are probably not needed in Space
	skyColor = { r = 19, g = 59, b = 108 },
	groundColor = { r = 19, g = 59, b = 108 },

}
theme2 = {

	loadListGroup = {"THEME_2"},
	compoSpriteGroup = "THEME_1_COMPOSPRITES",
	texture = "INGAME_TEXTURE_SAND_1",
	music = "AB_space_ambience_pigbang",
	
	musicVolume = 1,

	gravitySliceSprite = "THEME_1_GRAVITY_SLICE",
	gravitySliceSpriteFaded = "THEME_1_GRAVITY_SLICE_FADED",
	
	gravitySliceBoxSprite = "THEME_1_GRAVITY_SLICE_BOX",
	gravitySliceBoxSpriteFaded = "THEME_1_GRAVITY_SLICE_BOX_FADED",
	
	-- SHEET, SPRITE, PARALLAX_SPEED, SCALE
	
	------------------------ 
	--[[
			INSTRUCTIONS
			
		bgLayers: Container of all background layers (drawn behind game elements)
			zDistance: distance to the camera on Z axis (default is 0)
			xMult, yMult: x and y translation multipliers (default is 1)
			angleMult: rotation multiplier; ties rotation to parallax movement (default is 0)
			elements: Table of random elements to populate backgrounds
				w : spawning area width
				h : spawning area height
				variation : Refers to random change to scale of sprite
				amount : Number of elements to create
				sprites : Table containing all posible sprites to use (will be chosen randomely)
	
	
	]]--
	----------------------------
	-- Example animation
	--{ sprite="", zDistance=0.5, scale=0.9, angleMult=0, xMult=1, elements={isAnimation = true, animDelay = 0.2, startingDelay = 2, w=0.5, h=0.5, scale=1, randomRotation = false, variation = 0.1, amount = 9, velX = 0.1, sprites = {"THEME_1_PLANET_1_1", "THEME_1_PLANET_1_2", "THEME_1_PLANET_1_3", "THEME_1_PLANET_1_4"}}, bgLayer=true, scaleSpeed=0.1},
	bgLayers = {  
				{sprite="THEME_2_BG_1", bLoop=true, zDistance=0.1, scale = 1.25, scaleSpeed = 0.2, angleMult=0, xMult=0.02, yMult=0.02, offsetX = -10, offsetY = 0, elements={ amount = 0}},
				
			--	{sprite="THEME_1_PLANET_1_1", zDistance=0.1, scale=0.5, scaleSpeed = 1, angleMult=0.1, xMult=0, yMult=0, yOffset=0.5, elements={ amount = 0, sprites = {"PARALLAX_STAR_1"}}, bgLayer=true,  offsetY=0},
		--planets 1
			--	{ sprite="", zDistance=0.2, scale=0.6, angleMult=0, yMult=0, xMult=0.3, elements={w=0.1, h=0.1, scale=1, randomRotation = false, variation = 0.1, amount = 3, velX = 0.2, sprites = {"THEME_1_PLANET_1_1", "THEME_1_PLANET_1_2", "THEME_1_PLANET_1_3", "THEME_1_PLANET_1_4"}}, bgLayer=true, scaleSpeed=0.6},
		--clouds 1									 							  
			--	{ sprite="", zDistance=0.2, scale=1, angleMult=0, yMult=0, xMult=0.3, elements={w=0.1, h=0.1, scale=1, randomRotation = false, variation = 0.1, amount = 2, velX = 0.35, sprites = {"THEME_1_CLOUD_1_1", "THEME_1_CLOUD_1_2", "THEME_1_CLOUD_1_3"}}, scaleSpeed=1},
		--parallax 1
			--	{sprite="THEME_1_PARALLAX_1", yMult = 0, zDistance=0.1, scale=1.2, elements={randomRotation = false, variation = 0.1, amount = 0, velX = 0.1, }, offsetY=550, offsetY_PC=550, scaleSpeed=1},	--
		--planets 2
			--	{ sprite="", zDistance=0.3, scale=0.7, yMult=0, xMult=0.3, elements={w=0.1, h=0.1, scale=1, randomRotation = false, variation = 0.1, amount = 2, velX = 0.27, sprites = {"THEME_1_PLANET_2_1", "THEME_1_PLANET_2_2", "THEME_1_PLANET_2_3", "THEME_1_PLANET_2_4"}}, scaleSpeed=0.7},
		--clouds 2
			--	{ sprite="", zDistance=0.4, scale=0.7, yMult=0, xMult=0.3, elements={w=0.3, h=0.05, scale=1, randomRotation = false, variation = 0.1, amount = 2, velX = 0.4, sprites = {"THEME_1_CLOUD_2_1", "THEME_1_CLOUD_2_2", "THEME_1_CLOUD_2_3"}}, offsetY=0, scaleSpeed=0.7},
		--parallax 2
			--	{sprite="THEME_1_PARALLAX_2", zDistance=0.2, scale=1.2, xMult = 1, yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, }, offsetX=0, offsetY=570, offsetY_PC=600, scaleSpeed=2},	--
		--planets 3
			--	{ sprite="", zDistance=0.5, scale=0.7, yMult=0, xMult=0.3, elements={w=0.1, h=0.1, scale=1, randomRotation = false, variation = 0.1, amount = 2, velX = 1, sprites = {"THEME_1_PLANET_3_1", "THEME_1_PLANET_3_2", "THEME_1_PLANET_3_3", "THEME_1_PLANET_3_4"}}, scaleSpeed=1.5},
		--clouds 3
			--{ sprite="", zDistance=0.8, scale=0.7, yMult=0, xMult=0.3, elements={w=0.1, h=0.1, scale=0.7, randomRotation = false, variation = 0.1, amount = 1, velX = 0.8, sprites = {"THEME_1_CLOUD_3_1", "THEME_1_CLOUD_3_2", "THEME_1_CLOUD_3_3"}}, scaleSpeed=1.5},
		--parallax 3
				--{sprite="THEME_1_PARALLAX_3", zDistance=0.3, scale=1.2, elements={randomRotation = false, variation = 0.1, amount = 0, velX = 0.1, sprites = {"THEME_1_PLANET_3_1", "THEME_1_PLANET_3_2", "THEME_1_PLANET_3_3", "THEME_1_PLANET_3_4"}}, yMult = 0, offsetX=0, offsetY=0, scaleSpeed=0.5},	--
			--	{sprite="THEME_1_PARALLAX_3", sprite_PC="THEME_1_PARALLAX_3_LONG_VERSION_PC", zDistance=0.2, scale=1.2, xMult = 1, yMult = 0, elements={randomRotation = false, variation = 0.1, amount = 0, }, offsetX=0, offsetY=650, offsetY_PC=700, scaleSpeed=2, scaleSpeed_PC=1},	
				--{sprite="THEME_1_PARALLAX_3", sprite_PC="THEME_1_PARALLAX_3_LONG_VERSION_PC", zDistance=0.8, zDistance_PC=1, scale=1, scale_PC=1.2, yMult=0, yMult_PC= 0, xMult = 1, xMult_PC= 1,  elements={randomRotation = false, variation = 0.1, amount = 0, },  offsetX=0, offsetY=550, offsetY_PC=500, scaleSpeed=3, scaleSpeed_PC=0.8}
			},

	 fgLayers = {},
--	fgLayers = { {"THEME_3_PARALLAX_1", "A_THEME_2_PARALLAX_3", 0.1, 1.15, {randomRotation = false, variation = 0.1, amount = 0, velX = 0.1, sprites = {"A_THEME_2_PLANET_3_1", "A_THEME_2_PLANET_3_2", "A_THEME_2_PLANET_3_3", "A_THEME_2_PLANET_3_4"}}, bgLayer=false, offsetX=-0.4, offsetY=0.0, scaleSpeed=0.1}},	
	--fgLayers = { { "THEME_1_BG_1", "PARALLAX_BACKGROUND_1", 0.2, 0.05 } },

	-- These color values are probably not needed in Space
	skyColor = { r = 19, g = 59, b = 108 },
	groundColor = { r = 19, g = 59, b = 108 },

}
