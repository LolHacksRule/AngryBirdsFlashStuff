package §'G§
{
   import §6!3§.§,s§;
   import §6!3§.§;!U§;
   import flash.utils.Dictionary;
   
   public class §=g§ extends §^"[§
   {
       
      
      private var §6#3§:Dictionary;
      
      private var §&"^§:Dictionary;
      
      public function §=g§(param1:§3$§)
      {
         this.§6#3§ = new Dictionary();
         this.§&"^§ = new Dictionary();
         super(param1);
      }
      
      override public function initializeAnimations() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         super.initializeAnimations();
         §7_§("MISC_FB_SKIS",["BLOCK_FB_SKIS_1","BLOCK_FB_SKIS_2"]);
         §7_§("POWERUP_BOMB",["POWERUP_GIFT"]);
         §7_§("POWERUP_BOMB_PARACHUTE",["POWERUP_PARACHUTE"]);
         §7_§("SLING_SHOT_KINGSLING",["SLING_SHOT_KINGSLING"]);
         §7_§("SLING_SHOT_WOOD",["SLING_SHOT_WOOD_BACK","SLING_SHOT_WOOD_FRONT"]);
         §7_§("SLING_SHOT_STONE",["SLING_SHOT_STONE_BACK","SLING_SHOT_STONE_FRONT"]);
         §7_§("SLING_SHOT_GLASS",["SLING_SHOT_GLASS_BACK","SLING_SHOT_GLASS_FRONT"]);
         §7_§("SLING_SHOT_GOLDEN",["SLING_SHOT_GOLDEN_BACK","SLING_SHOT_GOLDEN_FRONT"]);
         §7_§("BONE_SLINGSHOT",["BONE_SLINGSHOT_BACK","BONE_SLINGSHOT_FRONT"]);
         §7_§("SLING_SHOT_BOUNCY",["SLING_SHOT_BOUNCY_BACK","SLING_SHOT_BOUNCY_FRONT"]);
         §7_§("SLING_SHOT_DIAMOND",["SLING_SHOT_DIAMOND_BACK","SLING_SHOT_DIAMOND_FRONT"]);
         §7_§("XMAS_2013_SLINGSHOT",["SLING_SHOT_TREE_PART_1","SLING_SHOT_TREE_PART_1"]);
         §7_§("SLING_SHOT_TREE_PART_1",["SLING_SHOT_TREE_PART_1"]);
         §7_§("SLING_SHOT_TREE_PART_2",["SLING_SHOT_TREE_PART_2"]);
         §7_§("SLING_SHOT_TREE_PART_3",["SLING_SHOT_TREE_PART_3"]);
         §7_§("SLING_SHOT_TREE_PART_4",["SLING_SHOT_TREE_PART_4"]);
         §7_§("SLING_SHOT_TREE_PART_5",["SLING_SHOT_TREE_PART_5"]);
         §7_§("SLING_SHOT_TREE_PART_6",["SLING_SHOT_TREE_PART_6"]);
         §7_§("LASER_DOT",["LASER_DOT"]);
         §7_§("POWERUP_BOMB_UNWRAP",["PARTICLE_CHRISTMAS_WRAP_1","PARTICLE_CHRISTMAS_WRAP_2","PARTICLE_CHRISTMAS_WRAP_3","PARTICLE_CHRISTMAS_WRAP_4","PARTICLE_CHRISTMAS_WRAP_5"]);
         §7_§("WONDERLAND_MISC_SPLASH",["PARTICLE_WONDERLAND_SPLASH_1","PARTICLE_WONDERLAND_SPLASH_2","PARTICLE_WONDERLAND_SPLASH_3","PARTICLE_WONDERLAND_SPLASH_4"]);
         §7_§("POWERUP_SLINGSHOT_LIGHTNING",["POWERUP_EFFECT_LIGHTNING_1","POWERUP_EFFECT_LIGHTNING_2","POWERUP_EFFECT_LIGHTNING_3","POWERUP_EFFECT_LIGHTNING_4","POWERUP_EFFECT_LIGHTNING_5","POWERUP_EFFECT_LIGHTNING_6","POWERUP_EFFECT_LIGHTNING_7","POWERUP_EFFECT_LIGHTNING_8","POWERUP_EFFECT_LIGHTNING_9","POWERUP_EFFECT_LIGHTNING_10"]);
         §7_§("BLAST_EFFECT",["POWERUP_EFFECT_BLAST_1","POWERUP_EFFECT_BLAST_2","POWERUP_EFFECT_BLAST_3","POWERUP_EFFECT_BLAST_4"]);
         §7_§("POWERUP_POWERPOTION_ACTIVATION",["POWERUP_POWERPOTION_ACTIVATION_01","POWERUP_POWERPOTION_ACTIVATION_02","POWERUP_POWERPOTION_ACTIVATION_03","POWERUP_POWERPOTION_ACTIVATION_04","POWERUP_POWERPOTION_ACTIVATION_05","POWERUP_POWERPOTION_ACTIVATION_06","POWERUP_POWERPOTION_ACTIVATION_07","POWERUP_POWERPOTION_ACTIVATION_08","POWERUP_POWERPOTION_ACTIVATION_09","POWERUP_POWERPOTION_ACTIVATION_10"]);
         §7_§("POWERUP_BOOMBOX_ACTIVATION",["POWERUP_BOOMBOX_ACTIVATION_01","POWERUP_BOOMBOX_ACTIVATION_02","POWERUP_BOOMBOX_ACTIVATION_03","POWERUP_BOOMBOX_ACTIVATION_04","POWERUP_BOOMBOX_ACTIVATION_05","POWERUP_BOOMBOX_ACTIVATION_06","POWERUP_BOOMBOX_ACTIVATION_07","POWERUP_BOOMBOX_ACTIVATION_08","POWERUP_BOOMBOX_ACTIVATION_09","POWERUP_BOOMBOX_ACTIVATION_10"]);
         §7_§("POWERPOTION_BLAST",["POWERUP_EFFECT_POWERPOTION_2","POWERUP_EFFECT_POWERPOTION_1","POWERUP_EFFECT_POWERPOTION_2"]);
         §7_§("POWERUP_EFFECT_BURP",["POWERUP_EFFECT_BURB_1","POWERUP_EFFECT_BURB_2","POWERUP_EFFECT_BURB_3","POWERUP_EFFECT_BURB_4","POWERUP_EFFECT_BURB_5","POWERUP_EFFECT_BURB_6","POWERUP_EFFECT_BURB_7","POWERUP_EFFECT_BURB_8","POWERUP_EFFECT_BURB_9","POWERUP_EFFECT_BURB_10"]);
         §7_§("POWERUP_EFFECT_BUBBLE",["POWERUP_EFFECT_BUBBLE_1","POWERUP_EFFECT_BUBBLE_2","POWERUP_EFFECT_BUBBLE_3","POWERUP_EFFECT_BUBBLE_4","POWERUP_EFFECT_BUBBLE_5","POWERUP_EFFECT_BUBBLE_6","POWERUP_EFFECT_BUBBLE_7"]);
         §7_§("POWERUP_POWERPOTION_TRAIL",["POWERUP_EFFECT_BUBBLE_1","POWERUP_EFFECT_BUBBLE_2","POWERUP_EFFECT_BUBBLE_3","POWERUP_EFFECT_BUBBLE_4","POWERUP_EFFECT_BUBBLE_5"]);
         §7_§("POWERUP_PARTICLE_BUBBLE",["POWERUP_EFFECT_BUBBLE_1","BURP_BUBBLE_1","BURP_BUBBLE_2","BURP_BUBBLE_3","BURP_BUBBLE_4","BURP_BUBBLE_5"]);
         §7_§("POWERUP_EFFECT_POTIONCLOUD",["POWERUP_EFFECT_POTIONCLOUD_3","POWERUP_EFFECT_POTIONCLOUD_2","POWERUP_EFFECT_POTIONCLOUD_1"]);
         §7_§("STAR_PARTICLE",["POWERUP_EFFECT_STAR_1","POWERUP_EFFECT_STAR_2","POWERUP_EFFECT_STAR_3","POWERUP_EFFECT_STAR_4","POWERUP_EFFECT_STAR_5","POWERUP_EFFECT_STAR_6"]);
         §7_§("TELESCOPE_MOUNT",["POWERUP_EFFECT_TELESCOPE_1"]);
         §7_§("TELESCOPE_TUBE",["POWERUP_EFFECT_TELESCOPE_2"]);
         §7_§("EARTHQUAKE_DUST_CLOUD",["POWERUP_EFFECT_DUST_CLOUD_1"]);
         §7_§("EARTHQUAKE_PARTICLE_1",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_1"]);
         §7_§("EARTHQUAKE_PARTICLE_2",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_2"]);
         §7_§("EARTHQUAKE_PARTICLE_3",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_3"]);
         §7_§("EARTHQUAKE_PARTICLE_4",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_4"]);
         §7_§("EARTHQUAKE_PARTICLE_5",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_5"]);
         §7_§("EARTHQUAKE_PARTICLE_6",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_6"]);
         §7_§("PARTICLE_HALLOWEEN_STONE",["PARTICLE_HALLOWEEN_STONE_1","PARTICLE_HALLOWEEN_STONE_2","PARTICLE_HALLOWEEN_STONE_3"]);
         §7_§("MISC_FB_GRASS_SMALL",["MISC_FB_GRASS_SMALL_1_EASTER_2014"]);
         §7_§("MISC_FB_GRASS_MEDIUM",["MISC_FB_GRASS_MEDIUM_1_EASTER_2014"]);
         §7_§("MISC_EASTER_BLOCK_FLOWER_L",["MISC_EASTER_BLOCK_FLOWER_L_1_EASTER_2014"]);
         §7_§("MISC_EASTER_BLOCK_FLOWER_M",["MISC_EASTER_BLOCK_FLOWER_M_1_EASTER_2014"]);
         §7_§("PARTICLE_EASTER_FLOWER_1",["PARTICLE_EASTER_FLOWER_1_EASTER_2014"]);
         §7_§("PARTICLE_EASTER_FLOWER_2",["PARTICLE_EASTER_FLOWER_2_EASTER_2014"]);
         §7_§("PARTICLE_EASTER_FLOWER_3",["PARTICLE_EASTER_FLOWER_3_EASTER_2014"]);
         §7_§("WINGMAN_EFFECT_1",["WINGMAN_EFFECTS_1"]);
         §7_§("WINGMAN_EFFECT_2",["WINGMAN_EFFECTS_2"]);
         §7_§("WINGMAN_EFFECT_3",["WINGMAN_EFFECTS_3"]);
         §7_§("WINGMAN_EFFECT_4",["WINGMAN_EFFECTS_4"]);
         §7_§("WINGMAN_EFFECT_5",["WINGMAN_EFFECTS_5"]);
         §7_§("WINGMAN_EFFECT_6",["WINGMAN_EFFECTS_6"]);
         §7_§("WINGMAN_EFFECT_7",["WINGMAN_EFFECTS_7"]);
         §7_§("MISC_FB_SHOT_CANNON",["NEW17_CANNON_SHOT"]);
         §7_§("PARTICLE_CANNON_SHOT",["NEW17_CANNON_PARTICLE_1","NEW17_CANNON_PARTICLE_2","NEW17_CANNON_PARTICLE_3","NEW17_CANNON_PARTICLE_4","NEW17_CANNON_PARTICLE_5"]);
         §&"u§("MISC_FB_CANNON",[["normal",["NEW17_CANNON_1"]],["shoot",["NEW17_CANNON_1","NEW17_CANNON_2","NEW17_CANNON_3","NEW17_CANNON_4","NEW17_CANNON_5","NEW17_CANNON_6","NEW17_CANNON_7","NEW17_CANNON_8"],[137.5,137.5,137.5,137.5,137.5,137.5,137.5,137.5]]]);
         §7_§("SMOKE_CANNONCLOUD",["SMOKE_WATERCANNONCLOUD_1","SMOKE_WATERCANNONCLOUD_2","SMOKE_WATERCANNONCLOUD_3","SMOKE_WATERCANNONCLOUD_4","SMOKE_WATERCANNONCLOUD_5"]);
         §7_§("MISC_FB_GRASS",["MISC_FB_GRASS_3_CHUCK_2014"]);
         §&"u§("MISC_FAIRY_BLOCK_4X4",[["normal",[["1",["MISC_WONDERLAND_GLOBE_1","MISC_WONDERLAND_GLOBE_2","MISC_WONDERLAND_GLOBE_3","MISC_WONDERLAND_GLOBE_4"],[100,100,100,100]]]]]);
         §7_§("PARTICLE_WONDERLAND_DUST",["PARTICLE_WONDERLAND_DUST_1","PARTICLE_WONDERLAND_DUST_2","PARTICLE_WONDERLAND_DUST_3"]);
         §7_§("MISC_WONDERLAND_EGG_1",["MISC_WONDERLAND_EGG_1"]);
         §7_§("MISC_WONDERLAND_EGG_2",["MISC_WONDERLAND_EGG_2"]);
         §7_§("MISC_WONDERLAND_EGG_3",["MISC_WONDERLAND_EGG_3"]);
         §7_§("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1",["POWERUP_TREESLING_AMMO"]);
         §7_§("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2",["POWERUP_TREESLING_AMMO2"]);
         §7_§("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3",["POWERUP_TREESLING_AMMO3"]);
         §7_§("PARTICLE_CHRISTMAS_SLINGSHOT_1_1",["POWERUP_TREESLING_PARTICLE_1"]);
         §7_§("PARTICLE_CHRISTMAS_SLINGSHOT_1_2",["POWERUP_TREESLING_PARTICLE_2"]);
         §7_§("PARTICLE_CHRISTMAS_SLINGSHOT_1_3",["POWERUP_TREESLING_PARTICLE_3"]);
         §7_§("PARTICLE_CHRISTMAS_SLINGSHOT_1_4",["POWERUP_TREESLING_PARTICLE_4"]);
         §7_§("PARTICLE_CHRISTMAS_SLINGSHOT_2_1",["POWERUP_TREESLING_PARTICLE2_1"]);
         §7_§("PARTICLE_CHRISTMAS_SLINGSHOT_2_2",["POWERUP_TREESLING_PARTICLE2_2"]);
         §7_§("PARTICLE_CHRISTMAS_SLINGSHOT_2_3",["POWERUP_TREESLING_PARTICLE2_3"]);
         §7_§("PARTICLE_CHRISTMAS_SLINGSHOT_2_4",["POWERUP_TREESLING_PARTICLE2_4"]);
         §7_§("PARTICLE_CHRISTMAS_SLINGSHOT_3_1",["POWERUP_TREESLING_PARTICLE3_1"]);
         §7_§("PARTICLE_CHRISTMAS_SLINGSHOT_3_2",["POWERUP_TREESLING_PARTICLE3_2"]);
         §7_§("PARTICLE_CHRISTMAS_SLINGSHOT_3_3",["POWERUP_TREESLING_PARTICLE3_3"]);
         §7_§("PARTICLE_CHRISTMAS_SLINGSHOT_3_4",["POWERUP_TREESLING_PARTICLE3_4"]);
         §7_§("XMAS_ORNAMENT_EXPLOSION",["EXPLOSION_ORNAMENT_1","EXPLOSION_ORNAMENT_2","EXPLOSION_ORNAMENT_3","EXPLOSION_ORNAMENT_4","EXPLOSION_ORNAMENT_5","EXPLOSION_ORNAMENT_6"]);
         §&"u§("PIG_PORKADOR",[["normal",[["1",["PIG_CYPORKADOR_1_WINGMAN_2_2014"]],["2",["PIG_CYPORKADOR_2_WINGMAN_2_2014"]]]]]);
         §&"u§("PIG_PIGTOPUS",[["normal",[["1",["PIG_PIGTOPUS_1"]],["2",["PIG_PIGTOPUS_2"]]]]]);
         §&"u§("PIG_DRINKHAT",[["normal",[["1",["PIG_DRINKHAT_1_WORLD_CUP_2014"]],["2",["PIG_DRINKHAT_2_WORLD_CUP_2014"]]]]]);
         §&"u§("HalloweenSmallPiglette",[["normal",[["1",["PIG_ZOMBIE_SMALL_01"]],["2",["PIG_ZOMBIE_SMALL_02"]]]]]);
         §&"u§("HalloweenMediumPiglette",[["normal",[["1",["PIG_ZOMBIE_MEDIUM_01"]],["2",["PIG_ZOMBIE_MEDIUM_02"]]]]]);
         §&"u§("HalloweenLargePiglette",[["normal",[["1",["PIG_ZOMBIE_BIG_01"]],["2",["PIG_ZOMBIE_BIG_02"]]]]]);
         §&"u§("HalloweenHelmetPiglette",[["normal",[["1",["PIG_ZOMBIE_HELMET_01"]],["2",["PIG_ZOMBIE_HELMET_01"]]]]]);
         §&"u§("HALLOWEEN_ABOMINATION_PIG",[["normal",["PIG_HALLOWEEN_BOSS_1"]]]);
         §&"u§("PIG_BASIC_SMALL_INFECTED",[["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]],["blink",["PIG_BASIC_SMALL_01_BLINK","PIG_BASIC_SMALL_02_BLINK","PIG_BASIC_SMALL_03_BLINK"]],["yell",["PIG_BASIC_SMALL_01_SMILE","PIG_BASIC_SMALL_02_SMILE","PIG_BASIC_SMALL_03_SMILE"]]]);
         §&"u§("PIG_BASIC_MEDIUM_INFECTED",[["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]],["blink",["PIG_BASIC_MEDIUM_01_BLINK","PIG_BASIC_MEDIUM_02_BLINK","PIG_BASIC_MEDIUM_03_BLINK"]],["yell",["PIG_BASIC_MEDIUM_01_SMILE","PIG_BASIC_MEDIUM_02_SMILE","PIG_BASIC_MEDIUM_03_SMILE"]]]);
         §&"u§("PIG_BASIC_BIG_INFECTED",[["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]],["blink",["PIG_BASIC_BIG_01_BLINK","PIG_BASIC_BIG_02_BLINK","PIG_BASIC_BIG_03_BLINK"]],["yell",["PIG_BASIC_BIG_01_SMILE","PIG_BASIC_BIG_02_SMILE","PIG_BASIC_BIG_03_SMILE"]]]);
         §&"u§("PIG_HELMET_INFECTED",[["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]],["blink",["PIG_HELMET_01_BLINK","PIG_HELMET_02_BLINK","PIG_HELMET_03_BLINK"]],["yell",["PIG_HELMET_01_SMILE","PIG_HELMET_02_SMILE","PIG_HELMET_03_SMILE"]]]);
         §&"u§("PIG_MUSTACHE_INFECTED",[["normal",["PIG_FRANKENSWINE_01","PIG_FRANKENSWINE_02","PIG_FRANKENSWINE_03"]],["blink",["PIG_FRANKENSWINE_01_BLINK","PIG_FRANKENSWINE_02_BLINK","PIG_FRANKENSWINE_03_BLINK"]],["yell",["PIG_FRANKENSWINE__01_SMILE","PIG_FRANKENSWINE_02_SMILE","PIG_FRANKENSWINE_03_SMILE"]]]);
         §&"u§("PIG_CHEF",[["normal",[["1",["MISC_THEMED_CHEF_PIG_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_15_ABBA_2015"]]]],["blink",[["1",["MISC_THEMED_CHEF_PIG_BLINK_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_BLINK_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_BLINK_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_BLINK_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_BLINK_5_ABBA_2015"]]]],["yell",[["1",["MISC_THEMED_CHEF_PIG_OPENMOUTH_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_OPENMOUTH_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_OPENMOUTH_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_OPENMOUTH_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_OPENMOUTH_5_ABBA_2015"]]]]]);
         for each(_loc1_ in [{
            "name":"PARTICLE_CHROME_GREEN_",
            "count":3
         },{
            "name":"PARTICLE_CHROME_RED_",
            "count":3
         }])
         {
            _loc2_ = 1;
            while(_loc2_ <= _loc1_.count)
            {
               §7_§(_loc1_.name + _loc2_,[_loc1_.name + _loc2_]);
               _loc2_++;
            }
         }
         this.§`"4§();
         §7_§("DEFAULT_SLING_EFFECT",["POWERUP_DEFAULTSLING_SEQUENCE_1","POWERUP_DEFAULTSLING_SEQUENCE_2","POWERUP_DEFAULTSLING_SEQUENCE_3","POWERUP_DEFAULTSLING_SEQUENCE_4","POWERUP_DEFAULTSLING_SEQUENCE_5","POWERUP_DEFAULTSLING_SEQUENCE_6","POWERUP_DEFAULTSLING_SEQUENCE_7","POWERUP_DEFAULTSLING_SEQUENCE_8","POWERUP_DEFAULTSLING_SEQUENCE_9","POWERUP_DEFAULTSLING_SEQUENCE_10"]);
         §7_§("SLING_SHOT_WOOD_EFFECT",["POWERUP_WOODCHIPPER_SEQUENCE_1","POWERUP_WOODCHIPPER_SEQUENCE_2","POWERUP_WOODCHIPPER_SEQUENCE_3","POWERUP_WOODCHIPPER_SEQUENCE_4","POWERUP_WOODCHIPPER_SEQUENCE_5","POWERUP_WOODCHIPPER_SEQUENCE_6","POWERUP_WOODCHIPPER_SEQUENCE_7","POWERUP_WOODCHIPPER_SEQUENCE_8","POWERUP_WOODCHIPPER_SEQUENCE_9"]);
         §7_§("SLING_SHOT_STONE_EFFECT",["POWERUP_STONECUTTER_SEQUENCE_1","POWERUP_STONECUTTER_SEQUENCE_2","POWERUP_STONECUTTER_SEQUENCE_3","POWERUP_STONECUTTER_SEQUENCE_4","POWERUP_STONECUTTER_SEQUENCE_5","POWERUP_STONECUTTER_SEQUENCE_6","POWERUP_STONECUTTER_SEQUENCE_7","POWERUP_STONECUTTER_SEQUENCE_8","POWERUP_STONECUTTER_SEQUENCE_9"]);
         §7_§("SLING_SHOT_GLASS_EFFECT",["POWERUP_GLASSBREAKER_SEQUENCE_1","POWERUP_GLASSBREAKER_SEQUENCE_2","POWERUP_GLASSBREAKER_SEQUENCE_3","POWERUP_GLASSBREAKER_SEQUENCE_4","POWERUP_GLASSBREAKER_SEQUENCE_5","POWERUP_GLASSBREAKER_SEQUENCE_6","POWERUP_GLASSBREAKER_SEQUENCE_7","POWERUP_GLASSBREAKER_SEQUENCE_8","POWERUP_GLASSBREAKER_SEQUENCE_9"]);
         §7_§("SLING_SHOT_GOLDEN_EFFECT",["POWERUP_GOLDEN_SEQUENCE_1","POWERUP_GOLDEN_SEQUENCE_2","POWERUP_GOLDEN_SEQUENCE_3","POWERUP_GOLDEN_SEQUENCE_4","POWERUP_GOLDEN_SEQUENCE_5","POWERUP_GOLDEN_SEQUENCE_6","POWERUP_GOLDEN_SEQUENCE_7","POWERUP_GOLDEN_SEQUENCE_8","POWERUP_GOLDEN_SEQUENCE_9"]);
         §7_§("BONE_SLINGSHOT_EFFECT",["POWERUP_WISHBONE_SEQUENCE_1","POWERUP_WISHBONE_SEQUENCE_2","POWERUP_WISHBONE_SEQUENCE_3","POWERUP_WISHBONE_SEQUENCE_4","POWERUP_WISHBONE_SEQUENCE_5","POWERUP_WISHBONE_SEQUENCE_6","POWERUP_WISHBONE_SEQUENCE_7","POWERUP_WISHBONE_SEQUENCE_8","POWERUP_WISHBONE_SEQUENCE_9"]);
         §7_§("XMAS_2013_SLINGSHOT_EFFECT",["POWERUP_TREESLING_SEQUENCE_1","POWERUP_TREESLING_SEQUENCE_2","POWERUP_TREESLING_SEQUENCE_3","POWERUP_TREESLING_SEQUENCE_4","POWERUP_TREESLING_SEQUENCE_5","POWERUP_TREESLING_SEQUENCE_6","POWERUP_TREESLING_SEQUENCE_7","POWERUP_TREESLING_SEQUENCE_8","POWERUP_TREESLING_SEQUENCE_9","POWERUP_TREESLING_SEQUENCE_10"]);
         §7_§("BOUNCY_SLINGSHOT_EFFECT",["POWERUP_BOUNCYSLING_SEQUENCE_1","POWERUP_BOUNCYSLING_SEQUENCE_2","POWERUP_BOUNCYSLING_SEQUENCE_3","POWERUP_BOUNCYSLING_SEQUENCE_4","POWERUP_BOUNCYSLING_SEQUENCE_5","POWERUP_BOUNCYSLING_SEQUENCE_6","POWERUP_BOUNCYSLING_SEQUENCE_7","POWERUP_BOUNCYSLING_SEQUENCE_8","POWERUP_BOUNCYSLING_SEQUENCE_9"]);
         §7_§("DIAMOND_SLINGSHOT_EFFECT",["POWERUP_DIAMONDSLING_SEQUENCE_1","POWERUP_DIAMONDSLING_SEQUENCE_2","POWERUP_DIAMONDSLING_SEQUENCE_3","POWERUP_DIAMONDSLING_SEQUENCE_4","POWERUP_DIAMONDSLING_SEQUENCE_5","POWERUP_DIAMONDSLING_SEQUENCE_6","POWERUP_DIAMONDSLING_SEQUENCE_7","POWERUP_DIAMONDSLING_SEQUENCE_8","POWERUP_DIAMONDSLING_SEQUENCE_9"]);
         for each(_loc1_ in [{
            "name":"POWERUP_STONECUTTER_PARTICLE_",
            "count":4
         },{
            "name":"POWERUP_GLASSBREAKER_PARTICLE_",
            "count":4
         },{
            "name":"POWERUP_WOODCHIPPER_PARTICLE_",
            "count":2
         },{
            "name":"POWERUP_GOLDEN_PARTICLE_",
            "count":2
         },{
            "name":"POWERUP_WISHBONE_PARTICLE_",
            "count":4
         },{
            "name":"POWERUP_TREESLING_PARTICLE_",
            "count":4
         },{
            "name":"POWERUP_BOUNCYSLING_PARTICLE_",
            "count":5
         },{
            "name":"POWERUP_DIAMONDSLING_PARTICLE_",
            "count":2
         }])
         {
            _loc2_ = 1;
            while(_loc2_ <= _loc1_.count)
            {
               §7_§(_loc1_.name + _loc2_,[_loc1_.name + _loc2_]);
               _loc2_++;
            }
         }
         §7_§("TEMPORARY_BLOCK",["MISC_QUESTION_MARK"]);
         §7_§("NEW24_PORTAL_RED_PUFF",["NEW24_PORTAL_RED_PUFF_1","NEW24_PORTAL_RED_PUFF_2","NEW24_PORTAL_RED_PUFF_3","NEW24_PORTAL_RED_PUFF_4","NEW24_PORTAL_RED_PUFF_5","NEW24_PORTAL_RED_PUFF_6"]);
         §7_§("NEW24_PORTAL_BLUE_PUFF",["NEW24_PORTAL_BLUE_PUFF_1","NEW24_PORTAL_BLUE_PUFF_2","NEW24_PORTAL_BLUE_PUFF_3","NEW24_PORTAL_BLUE_PUFF_4","NEW24_PORTAL_BLUE_PUFF_5","NEW24_PORTAL_BLUE_PUFF_6"]);
         §7_§("COLLECTIBLE_ITEM_DEFAULT",["MISC_WONDERLAND_FLOWER_1"]);
         §7_§("POWERUP_PUMPKIN",["POWERUP_HALLOWEEN_2017_PUMPKIN_01","POWERUP_HALLOWEEN_2017_PUMPKIN_02","POWERUP_HALLOWEEN_2017_PUMPKIN_03"],[300,300,300]);
         §&"u§("POWERUP_BOOMBOX",[["normal",[["1",["POWERUP_BOOMBOX1"]],["2",["POWERUP_BOOMBOX1"]]]]]);
         §7_§("BOOMBOX_EXPLOSION",["BOOMBOX_EXPLOSION_1","BOOMBOX_EXPLOSION_2","BOOMBOX_EXPLOSION_3","BOOMBOX_EXPLOSION_4","BOOMBOX_EXPLOSION_5","BOOMBOX_EXPLOSION_6","BOOMBOX_EXPLOSION_7","BOOMBOX_EXPLOSION_8"]);
         §7_§("PARACHUTE",["POWERUP_BOOMBOX_CHUTE"]);
         §7_§("STELLA_BUBBLE",["STELLA_BUBBLE1","STELLA_BUBBLE2","STELLA_BUBBLE3"]);
         §7_§("PARTICLE_BIRDPINK_1",["STELLA_FEATHER1"]);
         §7_§("PARTICLE_BIRDPINK_2",["STELLA_FEATHER2"]);
         §7_§("PARTICLE_BIRDPINK_3",["STELLA_FEATHER3"]);
         §7_§("BUBBLE_POP1",["STELLA_POP1"]);
         §7_§("BUBBLE_POP2",["STELLA_POP2"]);
         §7_§("BUBBLE_POP3",["STELLA_POP3"]);
         §7_§("BUBBLE_POP4",["STELLA_SPARKLE1"]);
         §7_§("BUBBLE_POP5",["STELLA_SPARKLE2"]);
         §7_§("BUBBLE_POP6",["STELLA_SPARKLE3"]);
         §&"u§("FIRE_BLOCK",[["normal",[["1",["FIREORB_1","FIREORB_2","FIREORB_3","FIREORB_4","FIREORB_5","FIREORB_6","FIREORB_7","FIREORB_8"],[50,50,50,50,50,50,50,50]]]]]);
         §&"u§("FIRE_BLOCK_SPARK",[["normal",[["1",["FIREORB_COAL_1","FIREORB_COAL_2","FIREORB_COAL_3","FIREORB_COAL_4","FIREORB_COAL_3","FIREORB_COAL_2","FIREORB_COAL_1"],[100,100,100,100,100,100,100]]]]]);
         §7_§("FIREORB_FLAME",["FIREORB_FLAME_1","FIREORB_FLAME_2","FIREORB_FLAME_3","FIREORB_FLAME_4","FIREORB_FLAME_5","FIREORB_FLAME_6","FIREORB_FLAME_7","FIREORB_FLAME_8"]);
      }
      
      protected function §`"4§() : void
      {
         §&"u§("BIRD_WINGMAN",[["normal",["BIRD_WINGMAN_1"]],["blink",["BIRD_WINGMAN_BLINK"]],["fly",["BIRD_WINGMAN_FLYING_1"]],["yell",["BIRD_WINGMAN_YELL"]],["fly_yell",["BIRD_WINGMAN_FLYING_YELL_1"]]]);
         §&"u§("BIRD_ORANGE",[["normal",["BIRD_ORANGE_YELL"]],["blink",["BIRD_ORANGE_BLINK"]],["fly",["BIRD_ORANGE_YELL"]],["yell",["BIRD_ORANGE_EXCITED"]],["fly_yell",["BIRD_ORANGE_EXCITED"]],["special",["BIRD_ORANGE_BALLOON"]]]);
         §&"u§("BIRD_PINK",[["normal",["BIRD_STELLA"]],["blink",["BIRD_STELLA_BLINK"]],["fly",["BIRD_STELLA_RELEASE"]],["yell",["BIRD_STELLA_YELL"]],["fly_yell",["BIRD_STELLA_YELL"]],["special",["BIRD_STELLA"]]]);
      }
      
      public function §^!2§(param1:String, param2:Dictionary, param3:String = "") : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         if(!this.§&"^§[param1])
         {
            this.§&"^§[param1] = §-"U§()[param1];
            §-"U§()[param1] = null;
            if(param2 && param2["particleMaterialOriginal"])
            {
               _loc4_ = 0;
               while(_loc4_ < int(param2["particleMaterialOriginal"].length))
               {
                  _loc5_ = param2["particleMaterialOriginal"][_loc4_];
                  this.§&"^§[_loc5_] = §-"U§()[_loc5_];
                  _loc4_++;
               }
            }
         }
         §-"U§()[param1] = null;
         if(param3 == "")
         {
            §-"U§()[param1] = this.§&"^§[param1];
            if(param2 && param2["particleMaterialOriginal"])
            {
               _loc4_ = 0;
               while(_loc4_ < int(param2["particleMaterialOriginal"].length))
               {
                  _loc5_ = param2["particleMaterialOriginal"][_loc4_];
                  §-"U§()[_loc5_] = this.§&"^§[_loc5_];
                  _loc4_++;
               }
            }
         }
         else
         {
            (_loc6_ = []).push([§;!U§.§,#c§,[["1",[param2["normal"]]],["2",[param2["normal2"]]]]]);
            §&"u§(param1,_loc6_);
            if(param2 && param2["particleMaterialOriginal"])
            {
               _loc4_ = 0;
               while(_loc4_ < int(param2["particleMaterialOriginal"].length))
               {
                  _loc7_ = param2["particleMaterialOriginal"][_loc4_];
                  _loc8_ = param2["particleMaterial"][_loc4_];
                  §-"U§()[_loc7_] = §-"U§()[_loc8_];
                  _loc4_++;
               }
            }
         }
      }
      
      public function §0#G§(param1:String, param2:Dictionary, param3:String = "") : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         if(!this.§6#3§[param1])
         {
            this.§6#3§[param1] = §-"U§()[param1];
            §-"U§()[param1] = null;
            if(param2 && param2["particleMaterialOriginal"])
            {
               _loc4_ = 0;
               while(_loc4_ < int(param2["particleMaterialOriginal"].length))
               {
                  _loc5_ = param2["particleMaterialOriginal"][_loc4_];
                  this.§6#3§[_loc5_] = §-"U§()[_loc5_];
                  _loc4_++;
               }
            }
         }
         §-"U§()[param1] = null;
         if(param3 == "")
         {
            §-"U§()[param1] = this.§6#3§[param1];
            if(param2 && param2["particleMaterialOriginal"])
            {
               _loc4_ = 0;
               while(_loc4_ < int(param2["particleMaterialOriginal"].length))
               {
                  _loc5_ = param2["particleMaterialOriginal"][_loc4_];
                  §-"U§()[_loc5_] = this.§6#3§[_loc5_];
                  _loc4_++;
               }
            }
         }
         else
         {
            (_loc6_ = []).push([§;!U§.§,#c§,[["1",[param2["normal"]]],["2",[param2["normal2"]]]]]);
            _loc6_.push([§;!U§.§;8§,[["1",[param2[§;!U§.§;8§]]]]]);
            _loc6_.push([§,s§.§#!h§,[["1",[param2[§,s§.§#!h§]]]]]);
            _loc6_.push([§;!U§.§<#M§,[["1",[param2[§;!U§.§<#M§]]]]]);
            _loc6_.push([§,s§.§!"3§,[["1",[param2[§,s§.§!"3§]]]]]);
            _loc6_.push([§,s§.§'![§,[["1",[param2[§,s§.§'![§]]]]]);
            §&"u§(param1,_loc6_);
            if(param2 && param2["particleMaterialOriginal"])
            {
               _loc4_ = 0;
               while(_loc4_ < int(param2["particleMaterialOriginal"].length))
               {
                  _loc7_ = param2["particleMaterialOriginal"][_loc4_];
                  _loc8_ = param2["particleMaterial"][_loc4_];
                  §-"U§()[_loc7_] = §-"U§()[_loc8_];
                  _loc4_++;
               }
            }
         }
      }
   }
}
