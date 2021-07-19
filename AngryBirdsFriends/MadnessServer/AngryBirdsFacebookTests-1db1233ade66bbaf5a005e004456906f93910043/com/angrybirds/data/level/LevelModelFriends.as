package com.angrybirds.data.level
{
   public class LevelModelFriends extends LevelModelSpace
   {
      
      protected static var sNameHACK:Object = {};
      
      {
         initNameHACK();
      }
      
      protected var mOptimalPowerup:String = "";
      
      public function LevelModelFriends()
      {
         super();
      }
      
      public static function createFromLua(data:String) : LevelModelFriends
      {
         var level:LevelModelFriends = new LevelModelFriends();
         level.readFromLua(data);
         return level;
      }
      
      public static function createFromJSON(data:String) : LevelModelFriends
      {
         var level:LevelModelFriends = new LevelModelFriends();
         level.readDataFromJSON(data);
         return level;
      }
      
      public static function convertMobileNameToWebName(name:String) : String
      {
         return sNameHACK[name] || name;
      }
      
      protected static function initNameHACK() : void
      {
         sNameHACK["BLOCK_WOOD_1X2_1"] = "BLOCK_WOOD_1X2_1";
         sNameHACK["RedBird"] = "BIRD_RED";
         sNameHACK["RedBigBird"] = "BIRD_REDBIG";
         sNameHACK["SmallBlueBird"] = "BIRD_BLUE";
         sNameHACK["YellowBird"] = "BIRD_YELLOW";
         sNameHACK["BasicBird2"] = "BIRD_WHITE";
         sNameHACK["BlackBird"] = "BIRD_BLACK";
         sNameHACK["BoomerangBird"] = "BIRD_GREEN";
         sNameHACK["LargePiglette"] = "PIG_BASIC_BIG";
         sNameHACK["SmallPiglette"] = "PIG_BASIC_SMALL";
         sNameHACK["MediumPiglette"] = "PIG_BASIC_MEDIUM";
         sNameHACK["HelmetPiglette"] = "PIG_HELMET";
         sNameHACK["GrandpaPiglette"] = "PIG_MUSTACHE";
         sNameHACK["KingPiglette"] = "PIG_KING";
         sNameHACK["PIG_PORKADOR"] = "PIG_PORKADOR";
         sNameHACK["WoodBlock1"] = "WOOD_BLOCK_1X1";
         sNameHACK["WoodBlock2"] = "WOOD_BLOCK_2X1";
         sNameHACK["WoodBlock3"] = "WOOD_BLOCK_2X2";
         sNameHACK["WoodBlock4"] = "WOOD_BLOCK_4X1";
         sNameHACK["WoodBlock5"] = "WOOD_BLOCK_4X2";
         sNameHACK["WoodBlock6"] = "WOOD_BLOCK_8X1";
         sNameHACK["WoodBlock7"] = "WOOD_CIRCLE_4X4";
         sNameHACK["WoodBlock8"] = "WOOD_CIRCLE_2X2";
         sNameHACK["WoodBlock9"] = "WOOD_BLOCK_4X4_HOLLOW";
         sNameHACK["WoodBlock10"] = "WOOD_BLOCK_10X1";
         sNameHACK["WoodBlock11"] = "WOOD_TRIANGLE_4X4";
         sNameHACK["WoodBlock12"] = "WOOD_TRIANGLE_4X4_HOLLOW";
         sNameHACK["StoneBlock1"] = "STONE_BLOCK_1X1";
         sNameHACK["StoneBlock2"] = "STONE_BLOCK_2X1";
         sNameHACK["StoneBlock3"] = "STONE_BLOCK_2X2";
         sNameHACK["StoneBlock4"] = "STONE_BLOCK_4X1";
         sNameHACK["StoneBlock5"] = "STONE_BLOCK_4X2";
         sNameHACK["StoneBlock6"] = "STONE_BLOCK_8X1";
         sNameHACK["StoneBlock7"] = "STONE_CIRCLE_4X4";
         sNameHACK["StoneBlock8"] = "STONE_CIRCLE_2X2";
         sNameHACK["StoneBlock9"] = "STONE_BLOCK_4X4_HOLLOW";
         sNameHACK["StoneBlock10"] = "STONE_BLOCK_10X1";
         sNameHACK["StoneBlock11"] = "STONE_TRIANGLE_4X4";
         sNameHACK["StoneBlock12"] = "STONE_TRIANGLE_4X4_HOLLOW";
         sNameHACK["LightBlock1"] = "ICE_BLOCK_1X1";
         sNameHACK["LightBlock2"] = "ICE_BLOCK_2X1";
         sNameHACK["LightBlock3"] = "ICE_BLOCK_2X2";
         sNameHACK["LightBlock4"] = "ICE_BLOCK_4X1";
         sNameHACK["LightBlock5"] = "ICE_BLOCK_4X2";
         sNameHACK["LightBlock6"] = "ICE_BLOCK_8X1";
         sNameHACK["LightBlock7"] = "ICE_CIRCLE_4X4";
         sNameHACK["LightBlock8"] = "ICE_CIRCLE_2X2";
         sNameHACK["LightBlock9"] = "ICE_BLOCK_4X4_HOLLOW";
         sNameHACK["LightBlock10"] = "ICE_BLOCK_10X1";
         sNameHACK["LightBlock11"] = "ICE_TRIANGLE_4X4";
         sNameHACK["LightBlock12"] = "ICE_TRIANGLE_4X4_HOLLOW";
         sNameHACK["StaticFragileBlock01"] = "BREAKABLE_STATIC_BLOCK_1X1";
         sNameHACK["StaticFragileBlock02"] = "BREAKABLE_STATIC_BLOCK_5X2";
         sNameHACK["StaticFragileBlock03"] = "BREAKABLE_STATIC_BLOCK_10X2";
         sNameHACK["StaticFragileBlock04"] = "BREAKABLE_STATIC_BLOCK_5X5";
         sNameHACK["StaticFragileBlock05"] = "BREAKABLE_STATIC_BLOCK_10X10";
         sNameHACK["StaticFragileBlock06"] = "BREAKABLE_STATIC_BLOCK_INVISIBLE";
         sNameHACK["StaticBackgroundBlock_01"] = "TERRAIN_TEXTURED_HILLS_NON_COLLIDING_5X2";
         sNameHACK["StaticBackgroundBlock_02"] = "TERRAIN_TEXTURED_HILLS_NON_COLLIDING_10X2";
         sNameHACK["StaticBackgroundBlock_03"] = "TERRAIN_TEXTURED_HILLS_NON_COLLIDING_32X2";
         sNameHACK["StaticBackgroundBlock_04"] = "TERRAIN_TEXTURED_HILLS_NON_COLLIDING_5X5";
         sNameHACK["StaticBackgroundBlock_05"] = "TERRAIN_TEXTURED_HILLS_NON_COLLIDING_10X10";
         sNameHACK["StaticBackgroundBlock_06"] = "TERRAIN_TEXTURED_HILLS_NON_COLLIDING_1X1";
         sNameHACK["StaticBlockTheme01_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme01_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme01_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme01_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme01_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme01_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme02_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme02_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme02_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme02_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme02_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme02_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme03_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme03_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme03_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme03_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme03_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme03_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme04_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme04_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme04_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme04_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme04_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme04_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme05_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme05_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme05_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme05_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme05_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme05_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme06_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme06_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme06_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme06_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme06_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme06_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme07_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme07_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme07_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme07_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme07_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme07_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme08_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme08_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme08_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme08_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme08_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme08_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme09_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme09_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme09_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme09_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme09_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme09_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme10_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme10_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme10_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme10_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme10_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme10_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme11_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme11_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme11_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme11_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme11_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme11_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme12_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme12_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme12_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme12_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme12_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme12_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme13_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme13_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme13_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme13_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme13_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme13_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme14_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme14_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme14_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme14_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme14_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme14_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme15_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme15_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme15_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme15_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme15_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme15_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme16_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme16_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme16_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme16_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme16_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme16_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["StaticBlockTheme17_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         sNameHACK["StaticBlockTheme17_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         sNameHACK["StaticBlockTheme17_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         sNameHACK["StaticBlockTheme17_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         sNameHACK["StaticBlockTheme17_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         sNameHACK["StaticBlockTheme17_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         sNameHACK["ExtraApple"] = "MISC_FOOD_APPLE";
         sNameHACK["ExtraBanana"] = "MISC_FOOD_BANANA";
         sNameHACK["ExtraDonut01"] = "MISC_FOOD_DONUT";
         sNameHACK["ExtraHam"] = "MISC_FOOD_HAM";
         sNameHACK["ExtraStrawberry"] = "MISC_FOOD_STRAWBERRY";
         sNameHACK["ExtraMelon"] = "MISC_FOOD_WATERMELON";
         sNameHACK["ExtraStolenEgg"] = "MISC_PROP_WHITE_EGG";
         sNameHACK["ExtraStolenEgg"] = "MISC_PROP_WHITE_EGG";
         sNameHACK["StaticBalloon01"] = "MISC_BALLOON_GREEN";
         sNameHACK["StaticBalloon02"] = "MISC_BALLOON_PURPLE";
         sNameHACK["StaticBalloon03"] = "MISC_BALLOON_YELLOW";
         sNameHACK["StaticBalloon04"] = "MISC_BALLOON_BLUE";
         sNameHACK["StaticBalloon05"] = "MISC_BALLOON_RED";
         sNameHACK["Estrade01"] = "MISC_ESTRADE_7X2";
         sNameHACK["Estrade02"] = "MISC_ESTRADE_9X3";
         sNameHACK["Estrade03"] = "MISC_ESTRADE_11X3";
         sNameHACK["Estrade04"] = "MISC_ESTRADE_1X2";
         sNameHACK["ExtraRubberDuck"] = "MISC_RUBBER_DUCK";
         sNameHACK["ExtraBlockDice"] = "MISC_RUBBER_DICE";
         sNameHACK["ExtraBeachBall"] = "MISC_RUBBER_BEACHBALL";
         sNameHACK["ExtraBlockSmiley"] = "MISC_RUBBER_SMILEY";
         sNameHACK["ExtraBlockFlag01"] = "MISC_METAL_FLAG_FINLAND";
         sNameHACK["ExtraBlockFlag02"] = "MISC_METAL_FLAG_SWEDEN";
         sNameHACK["ExtraTire01"] = "MISC_METAL_TIRE_4X4";
         sNameHACK["ExtraTire02"] = "MISC_METAL_TIRE_3X3";
         sNameHACK["ExtraTire03"] = "MISC_METAL_TIRE_2X2";
         sNameHACK["ExtraPillar"] = "MISC_METAL_PILLAR";
         sNameHACK["ExtraDiamond"] = "MISC_METAL_DIAMOND";
         sNameHACK["ExtraBlockTNT"] = "MISC_EXPLOSIVE_TNT";
         sNameHACK["ExtraBlockStairs"] = "MISC_ESTRADE_2X2";
         sNameHACK["ExtraHolyGrail"] = "MISC_METAL_HOLYGRAIL";
         sNameHACK["ExtraStrongBall"] = "MISC_METAL_BALL_GREY";
         sNameHACK["ExtraTreasureChest"] = "MISC_METAL_CHEST";
         sNameHACK["BlockCarpet"] = "MISC_CARPET";
         sNameHACK["ExtraBanditoHat_1"] = "MISC_BANDITO_HAT";
         sNameHACK["ExtraCowboyHelmet_1"] = "MISC_COWBOY_HAT_BIG";
         sNameHACK["ExtraCowboyHelmetSmall_1"] = "MISC_COWBOY_HAT_SMALL";
         sNameHACK["ExtraSheriffHat_1"] = "MISC_SHERIFF_HAT_1";
         sNameHACK["ExtraSheriffHat_2"] = "MISC_SHERIFF_HAT_2";
         sNameHACK["ExtraRopeThick01"] = "MISC_ROPE_THICK";
         sNameHACK["ExtraRopeThin01"] = "MISC_ROPE_THIN";
         sNameHACK["ExtraRopeThin02"] = "MISC_ROPE_THIN_SHORT";
         sNameHACK["ExtraHelmetSmall"] = "MISC_HELMET_SMALL";
         sNameHACK["ExtraHelmetBig"] = "MISC_HELMET_BIG";
         sNameHACK["ExtraHelmetBoss"] = "MISC_HELMET_BOSS";
         sNameHACK["ExtraTrampoline"] = "MISC_METAL_BALL_RED";
         sNameHACK["ExtraTrampoline2"] = "MISC_RUBBER_TRAMPOLINE";
         sNameHACK["ExtraGoldenEgg"] = "MISC_GOLDEN_EGG";
         sNameHACK["ExtraSuperBowl"] = "MISC_EGG_SUPER_BOWL";
         sNameHACK["ExtraBlueBird"] = "MISC_BIRD_BLUE";
         sNameHACK["ExtraBoomerangBird"] = "MISC_BIRD_GREEN";
         sNameHACK["ExtraChain"] = "MISC_METAL_CHAIN";
         sNameHACK["ChromeStoneBlock1"] = "CHROME_STONE_BACK_4X4";
         sNameHACK["ChromeStoneBlock2"] = "CHROME_STONE_CIRCLE_4X4";
         sNameHACK["ChromeStoneBlock3"] = "CHROME_STONE_FORWARD_4X4";
         sNameHACK["ChromeStoneBlock4"] = "CHROME_STONE_INCOGNITO_4X4";
         sNameHACK["ChromeStoneBlock5"] = "CHROME_STONE_RELOAD_4X4";
         sNameHACK["ChromeStoneBlock6"] = "CHROME_STONE_STAR_4X4";
         sNameHACK["ChromeStoneBlock7"] = "CHROME_STONE_WRENCH_4X4";
         sNameHACK["ChromeStaticBlock2"] = "CHROME_PLATFORM_TAB1";
         sNameHACK["ChromeStaticBlock3"] = "CHROME_PLATFORM_TAB2";
         sNameHACK["ChromeBlockTNT"] = "CHROME_BOMB";
         sNameHACK["EXtraBlockImplosion"] = "CHROME_IMPLOSION_BOMB";
         sNameHACK["EXtraGlassBall"] = "CHROME_GLASS_BALL";
         sNameHACK["ChromeMetalBlock1"] = "CHROME_METAL_CIRCLE_4X4";
         sNameHACK["MiscGoldPot"] = "MISC_GOLD_POT";
         sNameHACK["MiscGoldPile2"] = "MISC_GOLD_PILE_2";
         sNameHACK["MiscBlackPumpkin"] = "MISC_BLACK_PUMPKIN";
         sNameHACK["MiscSkeletonHead"] = "MISC_SKELETON_HEAD";
         sNameHACK["theme1"] = "BACKGROUND_BLUE_GRASS";
         sNameHACK["theme2"] = "BACKGROUND_GREEN_PLANTS";
         sNameHACK["theme3"] = "BACKGROUND_RED_FLOWERS";
         sNameHACK["theme4"] = "BACKGROUND_BUSHES";
         sNameHACK["theme5"] = "BACKGROUND_CACTUS_DESERT";
         sNameHACK["theme6"] = "BACKGROUND_FOREST";
         sNameHACK["theme7"] = "BACKGROUND_CITY";
         sNameHACK["theme8"] = "BACKGROUND_CLOUDS";
         sNameHACK["theme9"] = "BACKGROUND_BLUE_GRASS";
         sNameHACK["theme10"] = "BACKGROUND_GREEN_PLANTS";
         sNameHACK["theme11"] = "BACKGROUND_RED_FLOWERS";
         sNameHACK["theme12"] = "BACKGROUND_BUSHES";
         sNameHACK["theme13"] = "BACKGROUND_CACTUS_DESERT";
         sNameHACK["theme14"] = "BACKGROUND_FOREST";
         sNameHACK["theme15"] = "BACKGROUND_CITY";
         sNameHACK["theme16"] = "BACKGROUND_WESTERN";
         sNameHACK["theme17"] = "BACKGROUND_CAVE";
         sNameHACK["theme19"] = "BACKGROUND_FB_BEACH";
         sNameHACK["ExtraFazerSquare"] = "FAZER_BLOCK";
         sNameHACK["ExtraFazerPyramid"] = "FAZER_CANDY_PYRAMID";
         sNameHACK["ExtraFazerCone"] = "FAZER_CANDY_CONE";
         sNameHACK["ExtraGoldenPistachio"] = "BLOCK_PISTACHIO_GOLD";
         sNameHACK["ExtraPistachio"] = "BLOCK_PISTACHIO";
         sNameHACK["ExtraShellLeft"] = "BLOCK_SHELL_LEFT";
         sNameHACK["ExtraShellRight"] = "BLOCK_SHELL_RIGHT";
         sNameHACK["wood"] = "MATERIAL_BLOCK_WOOD";
         sNameHACK["light"] = "MATERIAL_BLOCK_ICE";
         sNameHACK["rock"] = "MATERIAL_BLOCK_STONE";
         sNameHACK["extras"] = "OTHER_MATERIALS";
         sNameHACK["default"] = "DEFAULT";
         sNameHACK["decoration"] = "OTHER_MATERIALS";
      }
      
      public function get optimalPowerup() : String
      {
         return this.mOptimalPowerup;
      }
      
      public function set optimalPowerup(value:String) : void
      {
         this.mOptimalPowerup = value;
      }
      
      override public function readDataFromJSON(data:String) : void
      {
         super.readDataFromJSON(data);
         var json:Object = JSON.parse(data);
         if(json.worldGravity)
         {
            mWorldGravity = json.worldGravity;
         }
         else if(mWorldGravity == 0)
         {
            mWorldGravity = 20;
         }
         if(gravitySensorCount == 0)
         {
            mHasGround = true;
         }
         if(isNaN(mSlingshotX) && isNaN(mSlingshotY))
         {
            if(mBirds && mBirds.length > 0)
            {
               mSlingshotX = mBirds[0].x;
               mSlingshotY = mBirds[0].y - 8.5;
            }
         }
         for(var i:Number = 0; i < mObjects.length; i++)
         {
            mObjects[i].angle = mObjects[i].angle;
         }
         this.mOptimalPowerup = "";
         if(json.optimalPowerup)
         {
            this.mOptimalPowerup = json.optimalPowerup;
         }
         if(json.borderTop)
         {
            mBorderTop = json.borderTop;
         }
         else
         {
            mBorderTop = 0;
         }
         if(json.borderGround)
         {
            mBorderGround = json.borderGround;
         }
         else
         {
            mBorderGround = 0;
         }
         if(json.borderLeft)
         {
            mBorderLeft = json.borderLeft;
         }
         else
         {
            mBorderLeft = 0;
         }
         if(json.borderRight)
         {
            mBorderRight = json.borderRight;
         }
         else
         {
            mBorderRight = 0;
         }
      }
      
      override protected function readFromLua(lua:String) : void
      {
         super.readFromLua(lua);
         if(mWorldGravity == 0 && gravitySensorCount == 0)
         {
            mWorldGravity = 20;
         }
      }
      
      override public function getAsSerializableObject() : Object
      {
         var obj:Object = super.getAsSerializableObject();
         obj.optimalPowerup = this.optimalPowerup;
         return obj;
      }
      
      override protected function convertName(name:String) : String
      {
         return convertMobileNameToWebName(name);
      }
      
      override protected function shouldIgnoreObject(data:Object) : Boolean
      {
         return false;
      }
      
      public function containsObjectType(type:String) : Boolean
      {
         for(var i:Number = 0; i < mObjects.length; i++)
         {
            if(mObjects[i].type == type)
            {
               return true;
            }
         }
         return false;
      }
   }
}
