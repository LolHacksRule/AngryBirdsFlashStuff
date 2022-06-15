package §,"v§
{
   public class §^!b§ extends §[!I§
   {
      
      protected static var §-!g§:Object = {};
      
      {
         §&v§();
      }
      
      protected var §^c§:String = "";
      
      public function §^!b§()
      {
         super();
      }
      
      public static function §>"=§(param1:String) : §^!b§
      {
         var _loc2_:§^!b§ = new §^!b§();
         _loc2_.readFromLua(param1);
         return _loc2_;
      }
      
      public static function §<%§(param1:String) : §^!b§
      {
         var _loc2_:§^!b§ = new §^!b§();
         _loc2_.readDataFromJSON(param1);
         return _loc2_;
      }
      
      public static function §2X§(param1:String) : String
      {
         return §-!g§[param1] || param1;
      }
      
      protected static function §&v§() : void
      {
         §-!g§["BLOCK_WOOD_1X2_1"] = "BLOCK_WOOD_1X2_1";
         §-!g§["RedBird"] = "BIRD_RED";
         §-!g§["RedBigBird"] = "BIRD_REDBIG";
         §-!g§["SmallBlueBird"] = "BIRD_BLUE";
         §-!g§["YellowBird"] = "BIRD_YELLOW";
         §-!g§["BasicBird2"] = "BIRD_WHITE";
         §-!g§["BlackBird"] = "BIRD_BLACK";
         §-!g§["BoomerangBird"] = "BIRD_GREEN";
         §-!g§["LargePiglette"] = "PIG_BASIC_BIG";
         §-!g§["SmallPiglette"] = "PIG_BASIC_SMALL";
         §-!g§["MediumPiglette"] = "PIG_BASIC_MEDIUM";
         §-!g§["HelmetPiglette"] = "PIG_HELMET";
         §-!g§["GrandpaPiglette"] = "PIG_MUSTACHE";
         §-!g§["KingPiglette"] = "PIG_KING";
         §-!g§["PIG_PORKADOR"] = "PIG_PORKADOR";
         §-!g§["WoodBlock1"] = "WOOD_BLOCK_1X1";
         §-!g§["WoodBlock2"] = "WOOD_BLOCK_2X1";
         §-!g§["WoodBlock3"] = "WOOD_BLOCK_2X2";
         §-!g§["WoodBlock4"] = "WOOD_BLOCK_4X1";
         §-!g§["WoodBlock5"] = "WOOD_BLOCK_4X2";
         §-!g§["WoodBlock6"] = "WOOD_BLOCK_8X1";
         §-!g§["WoodBlock7"] = "WOOD_CIRCLE_4X4";
         §-!g§["WoodBlock8"] = "WOOD_CIRCLE_2X2";
         §-!g§["WoodBlock9"] = "WOOD_BLOCK_4X4_HOLLOW";
         §-!g§["WoodBlock10"] = "WOOD_BLOCK_10X1";
         §-!g§["WoodBlock11"] = "WOOD_TRIANGLE_4X4";
         §-!g§["WoodBlock12"] = "WOOD_TRIANGLE_4X4_HOLLOW";
         §-!g§["StoneBlock1"] = "STONE_BLOCK_1X1";
         §-!g§["StoneBlock2"] = "STONE_BLOCK_2X1";
         §-!g§["StoneBlock3"] = "STONE_BLOCK_2X2";
         §-!g§["StoneBlock4"] = "STONE_BLOCK_4X1";
         §-!g§["StoneBlock5"] = "STONE_BLOCK_4X2";
         §-!g§["StoneBlock6"] = "STONE_BLOCK_8X1";
         §-!g§["StoneBlock7"] = "STONE_CIRCLE_4X4";
         §-!g§["StoneBlock8"] = "STONE_CIRCLE_2X2";
         §-!g§["StoneBlock9"] = "STONE_BLOCK_4X4_HOLLOW";
         §-!g§["StoneBlock10"] = "STONE_BLOCK_10X1";
         §-!g§["StoneBlock11"] = "STONE_TRIANGLE_4X4";
         §-!g§["StoneBlock12"] = "STONE_TRIANGLE_4X4_HOLLOW";
         §-!g§["LightBlock1"] = "ICE_BLOCK_1X1";
         §-!g§["LightBlock2"] = "ICE_BLOCK_2X1";
         §-!g§["LightBlock3"] = "ICE_BLOCK_2X2";
         §-!g§["LightBlock4"] = "ICE_BLOCK_4X1";
         §-!g§["LightBlock5"] = "ICE_BLOCK_4X2";
         §-!g§["LightBlock6"] = "ICE_BLOCK_8X1";
         §-!g§["LightBlock7"] = "ICE_CIRCLE_4X4";
         §-!g§["LightBlock8"] = "ICE_CIRCLE_2X2";
         §-!g§["LightBlock9"] = "ICE_BLOCK_4X4_HOLLOW";
         §-!g§["LightBlock10"] = "ICE_BLOCK_10X1";
         §-!g§["LightBlock11"] = "ICE_TRIANGLE_4X4";
         §-!g§["LightBlock12"] = "ICE_TRIANGLE_4X4_HOLLOW";
         §-!g§["StaticFragileBlock01"] = "BREAKABLE_STATIC_BLOCK_1X1";
         §-!g§["StaticFragileBlock02"] = "BREAKABLE_STATIC_BLOCK_5X2";
         §-!g§["StaticFragileBlock03"] = "BREAKABLE_STATIC_BLOCK_10X2";
         §-!g§["StaticFragileBlock04"] = "BREAKABLE_STATIC_BLOCK_5X5";
         §-!g§["StaticFragileBlock05"] = "BREAKABLE_STATIC_BLOCK_10X10";
         §-!g§["StaticFragileBlock06"] = "BREAKABLE_STATIC_BLOCK_INVISIBLE";
         §-!g§["StaticBackgroundBlock_01"] = "TERRAIN_TEXTURED_HILLS_NON_COLLIDING_5X2";
         §-!g§["StaticBackgroundBlock_02"] = "TERRAIN_TEXTURED_HILLS_NON_COLLIDING_10X2";
         §-!g§["StaticBackgroundBlock_03"] = "TERRAIN_TEXTURED_HILLS_NON_COLLIDING_32X2";
         §-!g§["StaticBackgroundBlock_04"] = "TERRAIN_TEXTURED_HILLS_NON_COLLIDING_5X5";
         §-!g§["StaticBackgroundBlock_05"] = "TERRAIN_TEXTURED_HILLS_NON_COLLIDING_10X10";
         §-!g§["StaticBackgroundBlock_06"] = "TERRAIN_TEXTURED_HILLS_NON_COLLIDING_1X1";
         §-!g§["StaticBlockTheme01_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme01_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme01_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme01_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme01_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme01_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme02_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme02_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme02_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme02_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme02_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme02_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme03_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme03_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme03_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme03_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme03_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme03_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme04_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme04_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme04_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme04_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme04_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme04_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme05_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme05_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme05_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme05_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme05_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme05_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme06_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme06_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme06_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme06_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme06_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme06_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme07_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme07_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme07_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme07_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme07_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme07_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme08_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme08_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme08_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme08_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme08_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme08_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme09_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme09_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme09_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme09_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme09_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme09_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme10_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme10_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme10_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme10_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme10_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme10_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme11_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme11_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme11_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme11_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme11_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme11_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme12_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme12_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme12_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme12_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme12_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme12_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme13_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme13_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme13_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme13_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme13_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme13_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme14_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme14_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme14_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme14_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme14_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme14_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme15_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme15_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme15_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme15_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme15_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme15_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme16_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme16_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme16_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme16_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme16_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme16_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["StaticBlockTheme17_01"] = "TERRAIN_TEXTURED_HILLS_5X2";
         §-!g§["StaticBlockTheme17_02"] = "TERRAIN_TEXTURED_HILLS_10X2";
         §-!g§["StaticBlockTheme17_03"] = "TERRAIN_TEXTURED_HILLS_32X2";
         §-!g§["StaticBlockTheme17_04"] = "TERRAIN_TEXTURED_HILLS_5X5";
         §-!g§["StaticBlockTheme17_05"] = "TERRAIN_TEXTURED_HILLS_10X10";
         §-!g§["StaticBlockTheme17_06"] = "TERRAIN_TEXTURED_HILLS_1X1";
         §-!g§["ExtraApple"] = "MISC_FOOD_APPLE";
         §-!g§["ExtraBanana"] = "MISC_FOOD_BANANA";
         §-!g§["ExtraDonut01"] = "MISC_FOOD_DONUT";
         §-!g§["ExtraHam"] = "MISC_FOOD_HAM";
         §-!g§["ExtraStrawberry"] = "MISC_FOOD_STRAWBERRY";
         §-!g§["ExtraMelon"] = "MISC_FOOD_WATERMELON";
         §-!g§["ExtraStolenEgg"] = "MISC_PROP_WHITE_EGG";
         §-!g§["ExtraStolenEgg"] = "MISC_PROP_WHITE_EGG";
         §-!g§["StaticBalloon01"] = "MISC_BALLOON_GREEN";
         §-!g§["StaticBalloon02"] = "MISC_BALLOON_PURPLE";
         §-!g§["StaticBalloon03"] = "MISC_BALLOON_YELLOW";
         §-!g§["StaticBalloon04"] = "MISC_BALLOON_BLUE";
         §-!g§["StaticBalloon05"] = "MISC_BALLOON_RED";
         §-!g§["Estrade01"] = "MISC_ESTRADE_7X2";
         §-!g§["Estrade02"] = "MISC_ESTRADE_9X3";
         §-!g§["Estrade03"] = "MISC_ESTRADE_11X3";
         §-!g§["Estrade04"] = "MISC_ESTRADE_1X2";
         §-!g§["ExtraRubberDuck"] = "MISC_RUBBER_DUCK";
         §-!g§["ExtraBlockDice"] = "MISC_RUBBER_DICE";
         §-!g§["ExtraBeachBall"] = "MISC_RUBBER_BEACHBALL";
         §-!g§["ExtraBlockSmiley"] = "MISC_RUBBER_SMILEY";
         §-!g§["ExtraBlockFlag01"] = "MISC_METAL_FLAG_FINLAND";
         §-!g§["ExtraBlockFlag02"] = "MISC_METAL_FLAG_SWEDEN";
         §-!g§["ExtraTire01"] = "MISC_METAL_TIRE_4X4";
         §-!g§["ExtraTire02"] = "MISC_METAL_TIRE_3X3";
         §-!g§["ExtraTire03"] = "MISC_METAL_TIRE_2X2";
         §-!g§["ExtraPillar"] = "MISC_METAL_PILLAR";
         §-!g§["ExtraDiamond"] = "MISC_METAL_DIAMOND";
         §-!g§["ExtraBlockTNT"] = "MISC_EXPLOSIVE_TNT";
         §-!g§["ExtraBlockStairs"] = "MISC_ESTRADE_2X2";
         §-!g§["ExtraHolyGrail"] = "MISC_METAL_HOLYGRAIL";
         §-!g§["ExtraStrongBall"] = "MISC_METAL_BALL_GREY";
         §-!g§["ExtraTreasureChest"] = "MISC_METAL_CHEST";
         §-!g§["BlockCarpet"] = "MISC_CARPET";
         §-!g§["ExtraBanditoHat_1"] = "MISC_BANDITO_HAT";
         §-!g§["ExtraCowboyHelmet_1"] = "MISC_COWBOY_HAT_BIG";
         §-!g§["ExtraCowboyHelmetSmall_1"] = "MISC_COWBOY_HAT_SMALL";
         §-!g§["ExtraSheriffHat_1"] = "MISC_SHERIFF_HAT_1";
         §-!g§["ExtraSheriffHat_2"] = "MISC_SHERIFF_HAT_2";
         §-!g§["ExtraRopeThick01"] = "MISC_ROPE_THICK";
         §-!g§["ExtraRopeThin01"] = "MISC_ROPE_THIN";
         §-!g§["ExtraRopeThin02"] = "MISC_ROPE_THIN_SHORT";
         §-!g§["ExtraHelmetSmall"] = "MISC_HELMET_SMALL";
         §-!g§["ExtraHelmetBig"] = "MISC_HELMET_BIG";
         §-!g§["ExtraHelmetBoss"] = "MISC_HELMET_BOSS";
         §-!g§["ExtraTrampoline"] = "MISC_METAL_BALL_RED";
         §-!g§["ExtraTrampoline2"] = "MISC_RUBBER_TRAMPOLINE";
         §-!g§["ExtraGoldenEgg"] = "MISC_GOLDEN_EGG";
         §-!g§["ExtraSuperBowl"] = "MISC_EGG_SUPER_BOWL";
         §-!g§["ExtraBlueBird"] = "MISC_BIRD_BLUE";
         §-!g§["ExtraBoomerangBird"] = "MISC_BIRD_GREEN";
         §-!g§["ExtraChain"] = "MISC_METAL_CHAIN";
         §-!g§["ChromeStoneBlock1"] = "CHROME_STONE_BACK_4X4";
         §-!g§["ChromeStoneBlock2"] = "CHROME_STONE_CIRCLE_4X4";
         §-!g§["ChromeStoneBlock3"] = "CHROME_STONE_FORWARD_4X4";
         §-!g§["ChromeStoneBlock4"] = "CHROME_STONE_INCOGNITO_4X4";
         §-!g§["ChromeStoneBlock5"] = "CHROME_STONE_RELOAD_4X4";
         §-!g§["ChromeStoneBlock6"] = "CHROME_STONE_STAR_4X4";
         §-!g§["ChromeStoneBlock7"] = "CHROME_STONE_WRENCH_4X4";
         §-!g§["ChromeStaticBlock2"] = "CHROME_PLATFORM_TAB1";
         §-!g§["ChromeStaticBlock3"] = "CHROME_PLATFORM_TAB2";
         §-!g§["ChromeBlockTNT"] = "CHROME_BOMB";
         §-!g§["EXtraBlockImplosion"] = "CHROME_IMPLOSION_BOMB";
         §-!g§["EXtraGlassBall"] = "CHROME_GLASS_BALL";
         §-!g§["ChromeMetalBlock1"] = "CHROME_METAL_CIRCLE_4X4";
         §-!g§["MiscGoldPot"] = "MISC_GOLD_POT";
         §-!g§["MiscGoldPile2"] = "MISC_GOLD_PILE_2";
         §-!g§["MiscBlackPumpkin"] = "MISC_BLACK_PUMPKIN";
         §-!g§["MiscSkeletonHead"] = "MISC_SKELETON_HEAD";
         §-!g§["theme1"] = "BACKGROUND_BLUE_GRASS";
         §-!g§["theme2"] = "BACKGROUND_GREEN_PLANTS";
         §-!g§["theme3"] = "BACKGROUND_RED_FLOWERS";
         §-!g§["theme4"] = "BACKGROUND_BUSHES";
         §-!g§["theme5"] = "BACKGROUND_CACTUS_DESERT";
         §-!g§["theme6"] = "BACKGROUND_FOREST";
         §-!g§["theme7"] = "BACKGROUND_CITY";
         §-!g§["theme8"] = "BACKGROUND_CLOUDS";
         §-!g§["theme9"] = "BACKGROUND_BLUE_GRASS";
         §-!g§["theme10"] = "BACKGROUND_GREEN_PLANTS";
         §-!g§["theme11"] = "BACKGROUND_RED_FLOWERS";
         §-!g§["theme12"] = "BACKGROUND_BUSHES";
         §-!g§["theme13"] = "BACKGROUND_CACTUS_DESERT";
         §-!g§["theme14"] = "BACKGROUND_FOREST";
         §-!g§["theme15"] = "BACKGROUND_CITY";
         §-!g§["theme16"] = "BACKGROUND_WESTERN";
         §-!g§["theme17"] = "BACKGROUND_CAVE";
         §-!g§["theme19"] = "BACKGROUND_FB_BEACH";
         §-!g§["ExtraFazerSquare"] = "FAZER_BLOCK";
         §-!g§["ExtraFazerPyramid"] = "FAZER_CANDY_PYRAMID";
         §-!g§["ExtraFazerCone"] = "FAZER_CANDY_CONE";
         §-!g§["ExtraGoldenPistachio"] = "BLOCK_PISTACHIO_GOLD";
         §-!g§["ExtraPistachio"] = "BLOCK_PISTACHIO";
         §-!g§["ExtraShellLeft"] = "BLOCK_SHELL_LEFT";
         §-!g§["ExtraShellRight"] = "BLOCK_SHELL_RIGHT";
         §-!g§["wood"] = "MATERIAL_BLOCK_WOOD";
         §-!g§["light"] = "MATERIAL_BLOCK_ICE";
         §-!g§["rock"] = "MATERIAL_BLOCK_STONE";
         §-!g§["extras"] = "OTHER_MATERIALS";
         §-!g§["default"] = "DEFAULT";
         §-!g§["decoration"] = "OTHER_MATERIALS";
      }
      
      public function get optimalPowerup() : String
      {
         return this.§^c§;
      }
      
      public function set optimalPowerup(param1:String) : void
      {
         this.§^c§ = param1;
      }
      
      override public function readDataFromJSON(param1:String) : void
      {
         super.readDataFromJSON(param1);
         var _loc2_:Object = JSON.parse(param1);
         if(_loc2_.worldGravity)
         {
            §?!x§ = _loc2_.worldGravity;
         }
         else if(§?!x§ == 0)
         {
            §?!x§ = 20;
         }
         if(§##B§ == 0)
         {
            §4G§ = true;
         }
         if(isNaN(§4#o§) && isNaN(§]!2§))
         {
            if(mBirds && mBirds.length > 0)
            {
               §4#o§ = mBirds[0].x;
               §]!2§ = mBirds[0].y - 8.5;
            }
         }
         var _loc3_:Number = 0;
         while(_loc3_ < §,N§.length)
         {
            §,N§[_loc3_].angle = §,N§[_loc3_].angle;
            _loc3_++;
         }
         this.§^c§ = "";
         if(_loc2_.optimalPowerup)
         {
            this.§^c§ = _loc2_.optimalPowerup;
         }
         if(_loc2_.borderTop)
         {
            §,#y§ = _loc2_.borderTop;
         }
         else
         {
            §,#y§ = 0;
         }
         if(_loc2_.borderGround)
         {
            §6!o§ = _loc2_.borderGround;
         }
         else
         {
            §6!o§ = 0;
         }
         if(_loc2_.borderLeft)
         {
            § z§ = _loc2_.borderLeft;
         }
         else
         {
            § z§ = 0;
         }
         if(_loc2_.borderRight)
         {
            §3$?§ = _loc2_.borderRight;
         }
         else
         {
            §3$?§ = 0;
         }
      }
      
      override protected function readFromLua(param1:String) : void
      {
         super.readFromLua(param1);
         if(§?!x§ == 0 && §##B§ == 0)
         {
            §?!x§ = 20;
         }
      }
      
      override public function getAsSerializableObject() : Object
      {
         var _loc1_:Object = super.getAsSerializableObject();
         _loc1_.optimalPowerup = this.optimalPowerup;
         return _loc1_;
      }
      
      override protected function convertName(param1:String) : String
      {
         return §2X§(param1);
      }
      
      override protected function shouldIgnoreObject(param1:Object) : Boolean
      {
         return false;
      }
      
      public function §?Q§(param1:String) : Boolean
      {
         var _loc2_:Number = 0;
         while(_loc2_ < §,N§.length)
         {
            if(§,N§[_loc2_].type == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
   }
}
