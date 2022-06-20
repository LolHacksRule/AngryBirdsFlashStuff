package §7!j§
{
   import §>!5§.§"7§;
   import §>!5§.§^"9§;
   import flash.utils.Dictionary;
   
   public class §!"J§ extends §"I§
   {
       
      
      private var §]!%§:Dictionary;
      
      private var §#!0§:Dictionary;
      
      public function §!"J§(param1:§'0§)
      {
         this.§]!%§ = new Dictionary();
         this.§#!0§ = new Dictionary();
         super(param1);
      }
      
      override public function initializeAnimations() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         super.initializeAnimations();
         §#$9§("MISC_FB_SKIS",["BLOCK_FB_SKIS_1","BLOCK_FB_SKIS_2"]);
         §#$9§("POWERUP_BOMB",["POWERUP_GIFT"]);
         §#$9§("POWERUP_BOMB_PARACHUTE",["POWERUP_PARACHUTE"]);
         §#$9§("SLING_SHOT_KINGSLING",["SLING_SHOT_KINGSLING"]);
         §#$9§("SLING_SHOT_WOOD",["SLING_SHOT_WOOD_BACK","SLING_SHOT_WOOD_FRONT"]);
         §#$9§("SLING_SHOT_STONE",["SLING_SHOT_STONE_BACK","SLING_SHOT_STONE_FRONT"]);
         §#$9§("SLING_SHOT_GLASS",["SLING_SHOT_GLASS_BACK","SLING_SHOT_GLASS_FRONT"]);
         §#$9§("SLING_SHOT_GOLDEN",["SLING_SHOT_GOLDEN_BACK","SLING_SHOT_GOLDEN_FRONT"]);
         §#$9§("BONE_SLINGSHOT",["BONE_SLINGSHOT_BACK","BONE_SLINGSHOT_FRONT"]);
         §#$9§("SLING_SHOT_BOUNCY",["SLING_SHOT_BOUNCY_BACK","SLING_SHOT_BOUNCY_FRONT"]);
         §#$9§("SLING_SHOT_DIAMOND",["SLING_SHOT_DIAMOND_BACK","SLING_SHOT_DIAMOND_FRONT"]);
         §#$9§("XMAS_2013_SLINGSHOT",["SLING_SHOT_TREE_PART_1","SLING_SHOT_TREE_PART_1"]);
         §#$9§("SLING_SHOT_TREE_PART_1",["SLING_SHOT_TREE_PART_1"]);
         §#$9§("SLING_SHOT_TREE_PART_2",["SLING_SHOT_TREE_PART_2"]);
         §#$9§("SLING_SHOT_TREE_PART_3",["SLING_SHOT_TREE_PART_3"]);
         §#$9§("SLING_SHOT_TREE_PART_4",["SLING_SHOT_TREE_PART_4"]);
         §#$9§("SLING_SHOT_TREE_PART_5",["SLING_SHOT_TREE_PART_5"]);
         §#$9§("SLING_SHOT_TREE_PART_6",["SLING_SHOT_TREE_PART_6"]);
         §#$9§("LASER_DOT",["LASER_DOT"]);
         §#$9§("POWERUP_BOMB_UNWRAP",["PARTICLE_CHRISTMAS_WRAP_1","PARTICLE_CHRISTMAS_WRAP_2","PARTICLE_CHRISTMAS_WRAP_3","PARTICLE_CHRISTMAS_WRAP_4","PARTICLE_CHRISTMAS_WRAP_5"]);
         §#$9§("WONDERLAND_MISC_SPLASH",["PARTICLE_WONDERLAND_SPLASH_1","PARTICLE_WONDERLAND_SPLASH_2","PARTICLE_WONDERLAND_SPLASH_3","PARTICLE_WONDERLAND_SPLASH_4"]);
         §#$9§("POWERUP_SLINGSHOT_LIGHTNING",["POWERUP_EFFECT_LIGHTNING_1","POWERUP_EFFECT_LIGHTNING_2","POWERUP_EFFECT_LIGHTNING_3","POWERUP_EFFECT_LIGHTNING_4","POWERUP_EFFECT_LIGHTNING_5","POWERUP_EFFECT_LIGHTNING_6","POWERUP_EFFECT_LIGHTNING_7","POWERUP_EFFECT_LIGHTNING_8","POWERUP_EFFECT_LIGHTNING_9","POWERUP_EFFECT_LIGHTNING_10"]);
         §#$9§("BLAST_EFFECT",["POWERUP_EFFECT_BLAST_1","POWERUP_EFFECT_BLAST_2","POWERUP_EFFECT_BLAST_3","POWERUP_EFFECT_BLAST_4"]);
         §#$9§("POWERUP_POWERPOTION_ACTIVATION",["POWERUP_POWERPOTION_ACTIVATION_01","POWERUP_POWERPOTION_ACTIVATION_02","POWERUP_POWERPOTION_ACTIVATION_03","POWERUP_POWERPOTION_ACTIVATION_04","POWERUP_POWERPOTION_ACTIVATION_05","POWERUP_POWERPOTION_ACTIVATION_06","POWERUP_POWERPOTION_ACTIVATION_07","POWERUP_POWERPOTION_ACTIVATION_08","POWERUP_POWERPOTION_ACTIVATION_09","POWERUP_POWERPOTION_ACTIVATION_10"]);
         §#$9§("POWERPOTION_BLAST",["POWERUP_EFFECT_POWERPOTION_2","POWERUP_EFFECT_POWERPOTION_1","POWERUP_EFFECT_POWERPOTION_2"]);
         §#$9§("POWERUP_EFFECT_BURP",["POWERUP_EFFECT_BURB_1","POWERUP_EFFECT_BURB_2","POWERUP_EFFECT_BURB_3","POWERUP_EFFECT_BURB_4","POWERUP_EFFECT_BURB_5","POWERUP_EFFECT_BURB_6","POWERUP_EFFECT_BURB_7","POWERUP_EFFECT_BURB_8","POWERUP_EFFECT_BURB_9","POWERUP_EFFECT_BURB_10"]);
         §#$9§("POWERUP_EFFECT_BUBBLE",["POWERUP_EFFECT_BUBBLE_1","POWERUP_EFFECT_BUBBLE_2","POWERUP_EFFECT_BUBBLE_3","POWERUP_EFFECT_BUBBLE_4","POWERUP_EFFECT_BUBBLE_5","POWERUP_EFFECT_BUBBLE_6","POWERUP_EFFECT_BUBBLE_7"]);
         §#$9§("POWERUP_POWERPOTION_TRAIL",["POWERUP_EFFECT_BUBBLE_1","POWERUP_EFFECT_BUBBLE_2","POWERUP_EFFECT_BUBBLE_3","POWERUP_EFFECT_BUBBLE_4","POWERUP_EFFECT_BUBBLE_5"]);
         §#$9§("POWERUP_BOUNCYSLING_PARTICLE_1",["POWERUP_BOUNCYSLING_PARTICLE_1"]);
         §#$9§("POWERUP_BOUNCYSLING_PARTICLE_2",["POWERUP_BOUNCYSLING_PARTICLE_2"]);
         §#$9§("POWERUP_BOUNCYSLING_PARTICLE_3",["POWERUP_BOUNCYSLING_PARTICLE_3"]);
         §#$9§("POWERUP_BOUNCYSLING_PARTICLE_4",["POWERUP_BOUNCYSLING_PARTICLE_4"]);
         §#$9§("POWERUP_BOUNCYSLING_PARTICLE_5",["POWERUP_BOUNCYSLING_PARTICLE_5"]);
         §#$9§("POWERUP_PARTICLE_BUBBLE",["POWERUP_EFFECT_BUBBLE_1","BURP_BUBBLE_1","BURP_BUBBLE_2","BURP_BUBBLE_3","BURP_BUBBLE_4","BURP_BUBBLE_5"]);
         §#$9§("POWERUP_EFFECT_POTIONCLOUD",["POWERUP_EFFECT_POTIONCLOUD_3","POWERUP_EFFECT_POTIONCLOUD_2","POWERUP_EFFECT_POTIONCLOUD_1"]);
         §#$9§("STAR_PARTICLE",["POWERUP_EFFECT_STAR_1","POWERUP_EFFECT_STAR_2","POWERUP_EFFECT_STAR_3","POWERUP_EFFECT_STAR_4","POWERUP_EFFECT_STAR_5","POWERUP_EFFECT_STAR_6"]);
         §#$9§("TELESCOPE_MOUNT",["POWERUP_EFFECT_TELESCOPE_1"]);
         §#$9§("TELESCOPE_TUBE",["POWERUP_EFFECT_TELESCOPE_2"]);
         §#$9§("EARTHQUAKE_DUST_CLOUD",["POWERUP_EFFECT_DUST_CLOUD_1"]);
         §#$9§("EARTHQUAKE_PARTICLE_1",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_1"]);
         §#$9§("EARTHQUAKE_PARTICLE_2",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_2"]);
         §#$9§("EARTHQUAKE_PARTICLE_3",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_3"]);
         §#$9§("EARTHQUAKE_PARTICLE_4",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_4"]);
         §#$9§("EARTHQUAKE_PARTICLE_5",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_5"]);
         §#$9§("EARTHQUAKE_PARTICLE_6",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_6"]);
         §#$9§("PARTICLE_HALLOWEEN_STONE",["PARTICLE_HALLOWEEN_STONE_1","PARTICLE_HALLOWEEN_STONE_2","PARTICLE_HALLOWEEN_STONE_3"]);
         §#$9§("MISC_FB_GRASS_SMALL",["MISC_FB_GRASS_SMALL_1_EASTER_2014"]);
         §#$9§("MISC_FB_GRASS_MEDIUM",["MISC_FB_GRASS_MEDIUM_1_EASTER_2014"]);
         §#$9§("MISC_EASTER_BLOCK_FLOWER_L",["MISC_EASTER_BLOCK_FLOWER_L_1_EASTER_2014"]);
         §#$9§("MISC_EASTER_BLOCK_FLOWER_M",["MISC_EASTER_BLOCK_FLOWER_M_1_EASTER_2014"]);
         §#$9§("PARTICLE_EASTER_FLOWER_1",["PARTICLE_EASTER_FLOWER_1_EASTER_2014"]);
         §#$9§("PARTICLE_EASTER_FLOWER_2",["PARTICLE_EASTER_FLOWER_2_EASTER_2014"]);
         §#$9§("PARTICLE_EASTER_FLOWER_3",["PARTICLE_EASTER_FLOWER_3_EASTER_2014"]);
         §#$9§("WINGMAN_EFFECT_1",["WINGMAN_EFFECTS_1"]);
         §#$9§("WINGMAN_EFFECT_2",["WINGMAN_EFFECTS_2"]);
         §#$9§("WINGMAN_EFFECT_3",["WINGMAN_EFFECTS_3"]);
         §#$9§("WINGMAN_EFFECT_4",["WINGMAN_EFFECTS_4"]);
         §#$9§("WINGMAN_EFFECT_5",["WINGMAN_EFFECTS_5"]);
         §#$9§("WINGMAN_EFFECT_6",["WINGMAN_EFFECTS_6"]);
         §#$9§("WINGMAN_EFFECT_7",["WINGMAN_EFFECTS_7"]);
         §#$9§("MISC_FB_SHOT_CANNON",["NEW17_CANNON_SHOT"]);
         §#$9§("PARTICLE_CANNON_SHOT",["NEW17_CANNON_PARTICLE_1","NEW17_CANNON_PARTICLE_2","NEW17_CANNON_PARTICLE_3","NEW17_CANNON_PARTICLE_4","NEW17_CANNON_PARTICLE_5"]);
         §8#f§("MISC_FB_CANNON",[["normal",["NEW17_CANNON_1"]],["shoot",["NEW17_CANNON_1","NEW17_CANNON_2","NEW17_CANNON_3","NEW17_CANNON_4","NEW17_CANNON_5","NEW17_CANNON_6","NEW17_CANNON_7","NEW17_CANNON_8"],[137.5,137.5,137.5,137.5,137.5,137.5,137.5,137.5]]]);
         §#$9§("SMOKE_CANNONCLOUD",["SMOKE_WATERCANNONCLOUD_1","SMOKE_WATERCANNONCLOUD_2","SMOKE_WATERCANNONCLOUD_3","SMOKE_WATERCANNONCLOUD_4","SMOKE_WATERCANNONCLOUD_5"]);
         §#$9§("MISC_FB_GRASS",["MISC_FB_GRASS_3_CHUCK_2014"]);
         §8#f§("MISC_FAIRY_BLOCK_4X4",[["normal",[["1",["MISC_WONDERLAND_GLOBE_1","MISC_WONDERLAND_GLOBE_2","MISC_WONDERLAND_GLOBE_3","MISC_WONDERLAND_GLOBE_4"],[100,100,100,100]]]]]);
         §#$9§("PARTICLE_WONDERLAND_DUST",["PARTICLE_WONDERLAND_DUST_1","PARTICLE_WONDERLAND_DUST_2","PARTICLE_WONDERLAND_DUST_3"]);
         §#$9§("MISC_WONDERLAND_EGG_1",["MISC_WONDERLAND_EGG_1"]);
         §#$9§("MISC_WONDERLAND_EGG_2",["MISC_WONDERLAND_EGG_2"]);
         §#$9§("MISC_WONDERLAND_EGG_3",["MISC_WONDERLAND_EGG_3"]);
         §#$9§("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1",["POWERUP_TREESLING_AMMO"]);
         §#$9§("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2",["POWERUP_TREESLING_AMMO2"]);
         §#$9§("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3",["POWERUP_TREESLING_AMMO3"]);
         §#$9§("PARTICLE_CHRISTMAS_SLINGSHOT_1_1",["POWERUP_TREESLING_PARTICLE_1"]);
         §#$9§("PARTICLE_CHRISTMAS_SLINGSHOT_1_2",["POWERUP_TREESLING_PARTICLE_2"]);
         §#$9§("PARTICLE_CHRISTMAS_SLINGSHOT_1_3",["POWERUP_TREESLING_PARTICLE_3"]);
         §#$9§("PARTICLE_CHRISTMAS_SLINGSHOT_1_4",["POWERUP_TREESLING_PARTICLE_4"]);
         §#$9§("PARTICLE_CHRISTMAS_SLINGSHOT_2_1",["POWERUP_TREESLING_PARTICLE2_1"]);
         §#$9§("PARTICLE_CHRISTMAS_SLINGSHOT_2_2",["POWERUP_TREESLING_PARTICLE2_2"]);
         §#$9§("PARTICLE_CHRISTMAS_SLINGSHOT_2_3",["POWERUP_TREESLING_PARTICLE2_3"]);
         §#$9§("PARTICLE_CHRISTMAS_SLINGSHOT_2_4",["POWERUP_TREESLING_PARTICLE2_4"]);
         §#$9§("PARTICLE_CHRISTMAS_SLINGSHOT_3_1",["POWERUP_TREESLING_PARTICLE3_1"]);
         §#$9§("PARTICLE_CHRISTMAS_SLINGSHOT_3_2",["POWERUP_TREESLING_PARTICLE3_2"]);
         §#$9§("PARTICLE_CHRISTMAS_SLINGSHOT_3_3",["POWERUP_TREESLING_PARTICLE3_3"]);
         §#$9§("PARTICLE_CHRISTMAS_SLINGSHOT_3_4",["POWERUP_TREESLING_PARTICLE3_4"]);
         §#$9§("XMAS_ORNAMENT_EXPLOSION",["EXPLOSION_ORNAMENT_1","EXPLOSION_ORNAMENT_2","EXPLOSION_ORNAMENT_3","EXPLOSION_ORNAMENT_4","EXPLOSION_ORNAMENT_5","EXPLOSION_ORNAMENT_6"]);
         §8#f§("PIG_PORKADOR",[["normal",[["1",["PIG_CYPORKADOR_1_WINGMAN_2_2014"]],["2",["PIG_CYPORKADOR_2_WINGMAN_2_2014"]]]]]);
         §8#f§("PIG_PIGTOPUS",[["normal",[["1",["PIG_PIGTOPUS_1"]],["2",["PIG_PIGTOPUS_2"]]]]]);
         §8#f§("PIG_DRINKHAT",[["normal",[["1",["PIG_DRINKHAT_1_WORLD_CUP_2014"]],["2",["PIG_DRINKHAT_2_WORLD_CUP_2014"]]]]]);
         §8#f§("PIG_BASIC_SMALL_ZOMBIE",[["normal",[["1",["PIG_ZOMBIE_SMALL_01"]],["2",["PIG_ZOMBIE_SMALL_02"]]]]]);
         §8#f§("PIG_BASIC_MEDIUM_ZOMBIE",[["normal",[["1",["PIG_ZOMBIE_MEDIUM_01"]],["2",["PIG_ZOMBIE_MEDIUM_02"]]]]]);
         §8#f§("PIG_BASIC_BIG_ZOMBIE",[["normal",[["1",["PIG_ZOMBIE_BIG_01"]],["2",["PIG_ZOMBIE_BIG_02"]]]]]);
         §8#f§("PIG_HELMET_ZOMBIE",[["normal",[["1",["PIG_ZOMBIE_HELMET_01"]],["2",["PIG_ZOMBIE_HELMET_01"]]]]]);
         §8#f§("PIG_MUSTACHE_ZOMBIE",[["normal",["PIG_ZOMBIE_FRANKENSWINE_01"]]]);
         §8#f§("HALLOWEEN_ABOMINATION_PIG",[["normal",["PIG_HALLOWEEN_BOSS_1"]]]);
         §8#f§("PIG_BASIC_SMALL_INFECTED",[["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]],["blink",["PIG_BASIC_SMALL_01_BLINK","PIG_BASIC_SMALL_02_BLINK","PIG_BASIC_SMALL_03_BLINK"]],["yell",["PIG_BASIC_SMALL_01_SMILE","PIG_BASIC_SMALL_02_SMILE","PIG_BASIC_SMALL_03_SMILE"]]]);
         §8#f§("PIG_BASIC_MEDIUM_INFECTED",[["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]],["blink",["PIG_BASIC_MEDIUM_01_BLINK","PIG_BASIC_MEDIUM_02_BLINK","PIG_BASIC_MEDIUM_03_BLINK"]],["yell",["PIG_BASIC_MEDIUM_01_SMILE","PIG_BASIC_MEDIUM_02_SMILE","PIG_BASIC_MEDIUM_03_SMILE"]]]);
         §8#f§("PIG_BASIC_BIG_INFECTED",[["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]],["blink",["PIG_BASIC_BIG_01_BLINK","PIG_BASIC_BIG_02_BLINK","PIG_BASIC_BIG_03_BLINK"]],["yell",["PIG_BASIC_BIG_01_SMILE","PIG_BASIC_BIG_02_SMILE","PIG_BASIC_BIG_03_SMILE"]]]);
         §8#f§("PIG_HELMET_INFECTED",[["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]],["blink",["PIG_HELMET_01_BLINK","PIG_HELMET_02_BLINK","PIG_HELMET_03_BLINK"]],["yell",["PIG_HELMET_01_SMILE","PIG_HELMET_02_SMILE","PIG_HELMET_03_SMILE"]]]);
         §8#f§("PIG_MUSTACHE_INFECTED",[["normal",["PIG_FRANKENSWINE_01","PIG_FRANKENSWINE_02","PIG_FRANKENSWINE_03"]],["blink",["PIG_FRANKENSWINE_01_BLINK","PIG_FRANKENSWINE_02_BLINK","PIG_FRANKENSWINE_03_BLINK"]],["yell",["PIG_FRANKENSWINE__01_SMILE","PIG_FRANKENSWINE_02_SMILE","PIG_FRANKENSWINE_03_SMILE"]]]);
         §8#f§("PIG_CHEF",[["normal",[["1",["MISC_THEMED_CHEF_PIG_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_15_ABBA_2015"]]]],["blink",[["1",["MISC_THEMED_CHEF_PIG_BLINK_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_BLINK_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_BLINK_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_BLINK_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_BLINK_5_ABBA_2015"]]]],["yell",[["1",["MISC_THEMED_CHEF_PIG_OPENMOUTH_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_OPENMOUTH_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_OPENMOUTH_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_OPENMOUTH_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_OPENMOUTH_5_ABBA_2015"]]]]]);
         §8#f§("PIG_CHEF",[["normal",[["1",["MISC_THEMED_CHEF_PIG_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_15_ABBA_2015"]]]],["blink",[["1",["MISC_THEMED_CHEF_PIG_BLINK_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_BLINK_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_BLINK_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_BLINK_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_BLINK_5_ABBA_2015"]]]],["yell",[["1",["MISC_THEMED_CHEF_PIG_OPENMOUTH_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_OPENMOUTH_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_OPENMOUTH_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_OPENMOUTH_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_OPENMOUTH_5_ABBA_2015"]]]]]);
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
               §#$9§(_loc1_.name + _loc2_,[_loc1_.name + _loc2_]);
               _loc2_++;
            }
         }
         this.§[?§();
         §#$9§("DEFAULT_SLING_EFFECT",["POWERUP_DEFAULTSLING_SEQUENCE_1","POWERUP_DEFAULTSLING_SEQUENCE_2","POWERUP_DEFAULTSLING_SEQUENCE_3","POWERUP_DEFAULTSLING_SEQUENCE_4","POWERUP_DEFAULTSLING_SEQUENCE_5","POWERUP_DEFAULTSLING_SEQUENCE_6","POWERUP_DEFAULTSLING_SEQUENCE_7","POWERUP_DEFAULTSLING_SEQUENCE_8","POWERUP_DEFAULTSLING_SEQUENCE_9","POWERUP_DEFAULTSLING_SEQUENCE_10"]);
         §#$9§("SLING_SHOT_WOOD_EFFECT",["POWERUP_WOODCHIPPER_SEQUENCE_1","POWERUP_WOODCHIPPER_SEQUENCE_2","POWERUP_WOODCHIPPER_SEQUENCE_3","POWERUP_WOODCHIPPER_SEQUENCE_4","POWERUP_WOODCHIPPER_SEQUENCE_5","POWERUP_WOODCHIPPER_SEQUENCE_6","POWERUP_WOODCHIPPER_SEQUENCE_7","POWERUP_WOODCHIPPER_SEQUENCE_8","POWERUP_WOODCHIPPER_SEQUENCE_9"]);
         §#$9§("SLING_SHOT_STONE_EFFECT",["POWERUP_STONECUTTER_SEQUENCE_1","POWERUP_STONECUTTER_SEQUENCE_2","POWERUP_STONECUTTER_SEQUENCE_3","POWERUP_STONECUTTER_SEQUENCE_4","POWERUP_STONECUTTER_SEQUENCE_5","POWERUP_STONECUTTER_SEQUENCE_6","POWERUP_STONECUTTER_SEQUENCE_7","POWERUP_STONECUTTER_SEQUENCE_8","POWERUP_STONECUTTER_SEQUENCE_9"]);
         §#$9§("SLING_SHOT_GLASS_EFFECT",["POWERUP_GLASSBREAKER_SEQUENCE_1","POWERUP_GLASSBREAKER_SEQUENCE_2","POWERUP_GLASSBREAKER_SEQUENCE_3","POWERUP_GLASSBREAKER_SEQUENCE_4","POWERUP_GLASSBREAKER_SEQUENCE_5","POWERUP_GLASSBREAKER_SEQUENCE_6","POWERUP_GLASSBREAKER_SEQUENCE_7","POWERUP_GLASSBREAKER_SEQUENCE_8","POWERUP_GLASSBREAKER_SEQUENCE_9"]);
         §#$9§("SLING_SHOT_GOLDEN_EFFECT",["POWERUP_GOLDEN_SEQUENCE_1","POWERUP_GOLDEN_SEQUENCE_2","POWERUP_GOLDEN_SEQUENCE_3","POWERUP_GOLDEN_SEQUENCE_4","POWERUP_GOLDEN_SEQUENCE_5","POWERUP_GOLDEN_SEQUENCE_6","POWERUP_GOLDEN_SEQUENCE_7","POWERUP_GOLDEN_SEQUENCE_8","POWERUP_GOLDEN_SEQUENCE_9"]);
         §#$9§("BONE_SLINGSHOT_EFFECT",["POWERUP_WISHBONE_SEQUENCE_1","POWERUP_WISHBONE_SEQUENCE_2","POWERUP_WISHBONE_SEQUENCE_3","POWERUP_WISHBONE_SEQUENCE_4","POWERUP_WISHBONE_SEQUENCE_5","POWERUP_WISHBONE_SEQUENCE_6","POWERUP_WISHBONE_SEQUENCE_7","POWERUP_WISHBONE_SEQUENCE_8","POWERUP_WISHBONE_SEQUENCE_9"]);
         §#$9§("XMAS_2013_SLINGSHOT_EFFECT",["POWERUP_TREESLING_SEQUENCE_1","POWERUP_TREESLING_SEQUENCE_2","POWERUP_TREESLING_SEQUENCE_3","POWERUP_TREESLING_SEQUENCE_4","POWERUP_TREESLING_SEQUENCE_5","POWERUP_TREESLING_SEQUENCE_6","POWERUP_TREESLING_SEQUENCE_7","POWERUP_TREESLING_SEQUENCE_8","POWERUP_TREESLING_SEQUENCE_9","POWERUP_TREESLING_SEQUENCE_10"]);
         §#$9§("BOUNCY_SLINGSHOT_EFFECT",["POWERUP_BOUNCYSLING_SEQUENCE_1","POWERUP_BOUNCYSLING_SEQUENCE_2","POWERUP_BOUNCYSLING_SEQUENCE_3","POWERUP_BOUNCYSLING_SEQUENCE_4","POWERUP_BOUNCYSLING_SEQUENCE_5","POWERUP_BOUNCYSLING_SEQUENCE_6","POWERUP_BOUNCYSLING_SEQUENCE_7","POWERUP_BOUNCYSLING_SEQUENCE_8","POWERUP_BOUNCYSLING_SEQUENCE_9"]);
         §#$9§("DIAMOND_SLINGSHOT_EFFECT",["POWERUP_DIAMONDSLING_SEQUENCE_1","POWERUP_DIAMONDSLING_SEQUENCE_2","POWERUP_DIAMONDSLING_SEQUENCE_3","POWERUP_DIAMONDSLING_SEQUENCE_4","POWERUP_DIAMONDSLING_SEQUENCE_5","POWERUP_DIAMONDSLING_SEQUENCE_6","POWERUP_DIAMONDSLING_SEQUENCE_7","POWERUP_DIAMONDSLING_SEQUENCE_8","POWERUP_DIAMONDSLING_SEQUENCE_9"]);
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
               §#$9§(_loc1_.name + _loc2_,[_loc1_.name + _loc2_]);
               _loc2_++;
            }
         }
         §#$9§("TEMPORARY_BLOCK",["MISC_QUESTION_MARK"]);
         §#$9§("NEW24_PORTAL_RED_PUFF",["NEW24_PORTAL_RED_PUFF_1","NEW24_PORTAL_RED_PUFF_2","NEW24_PORTAL_RED_PUFF_3","NEW24_PORTAL_RED_PUFF_4","NEW24_PORTAL_RED_PUFF_5","NEW24_PORTAL_RED_PUFF_6"]);
         §#$9§("NEW24_PORTAL_BLUE_PUFF",["NEW24_PORTAL_BLUE_PUFF_1","NEW24_PORTAL_BLUE_PUFF_2","NEW24_PORTAL_BLUE_PUFF_3","NEW24_PORTAL_BLUE_PUFF_4","NEW24_PORTAL_BLUE_PUFF_5","NEW24_PORTAL_BLUE_PUFF_6"]);
         §#$9§("COLLECTIBLE_ITEM_DEFAULT",["MISC_WONDERLAND_FLOWER_1"]);
         §#$9§("POWERUP_PUMPKIN",["POWERUP_HALLOWEEN_2017_PUMPKIN_01","POWERUP_HALLOWEEN_2017_PUMPKIN_02","POWERUP_HALLOWEEN_2017_PUMPKIN_03"],[300,300,300]);
      }
      
      protected function §[?§() : void
      {
         §8#f§("BIRD_VANTERRENCE",[["normal",["BIRD_VANTERENCE_1"]],["blink",["BIRD_VANTERENCE_BLINK"]],["fly",["BIRD_VANTERENCE_FLYING"]],["yell",["BIRD_VANTERENCE_YELL"]],["fly_yell",["BIRD_VANTERENCE_FLYING_YELL"]]]);
         §8#f§("BIRD_WINGMAN",[["normal",["BIRD_WINGMAN_1"]],["blink",["BIRD_WINGMAN_BLINK"]],["fly",["BIRD_WINGMAN_FLYING_1"]],["yell",["BIRD_WINGMAN_YELL"]],["fly_yell",["BIRD_WINGMAN_FLYING_YELL_1"]]]);
         §8#f§("BIRD_ORANGE",[["normal",["BIRD_ORANGE_YELL"]],["blink",["BIRD_ORANGE_BLINK"]],["fly",["BIRD_ORANGE_YELL"]],["yell",["BIRD_ORANGE_EXCITED"]],["fly_yell",["BIRD_ORANGE_EXCITED"]],["special",["BIRD_ORANGE_BALLOON"]]]);
      }
      
      public function §5N§(param1:String, param2:Dictionary, param3:String = "") : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         if(!this.§#!0§[param1])
         {
            this.§#!0§[param1] = §4$9§()[param1];
            §4$9§()[param1] = null;
            if(param2 && param2["particleMaterialOriginal"])
            {
               _loc4_ = 0;
               while(_loc4_ < int(param2["particleMaterialOriginal"].length))
               {
                  _loc5_ = param2["particleMaterialOriginal"][_loc4_];
                  this.§#!0§[_loc5_] = §4$9§()[_loc5_];
                  _loc4_++;
               }
            }
         }
         §4$9§()[param1] = null;
         if(param3 == "")
         {
            §4$9§()[param1] = this.§#!0§[param1];
            if(param2 && param2["particleMaterialOriginal"])
            {
               _loc4_ = 0;
               while(_loc4_ < int(param2["particleMaterialOriginal"].length))
               {
                  _loc5_ = param2["particleMaterialOriginal"][_loc4_];
                  §4$9§()[_loc5_] = this.§#!0§[_loc5_];
                  _loc4_++;
               }
            }
         }
         else
         {
            (_loc6_ = []).push([§^"9§.§5!G§,[["1",[param2["normal"]]],["2",[param2["normal2"]]]]]);
            §8#f§(param1,_loc6_);
            if(param2 && param2["particleMaterialOriginal"])
            {
               _loc4_ = 0;
               while(_loc4_ < int(param2["particleMaterialOriginal"].length))
               {
                  _loc7_ = param2["particleMaterialOriginal"][_loc4_];
                  _loc8_ = param2["particleMaterial"][_loc4_];
                  §4$9§()[_loc7_] = §4$9§()[_loc8_];
                  _loc4_++;
               }
            }
         }
      }
      
      public function §2k§(param1:String, param2:Dictionary, param3:String = "") : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         if(!this.§]!%§[param1])
         {
            this.§]!%§[param1] = §4$9§()[param1];
            §4$9§()[param1] = null;
            if(param2 && param2["particleMaterialOriginal"])
            {
               _loc4_ = 0;
               while(_loc4_ < int(param2["particleMaterialOriginal"].length))
               {
                  _loc5_ = param2["particleMaterialOriginal"][_loc4_];
                  this.§]!%§[_loc5_] = §4$9§()[_loc5_];
                  _loc4_++;
               }
            }
         }
         §4$9§()[param1] = null;
         if(param3 == "")
         {
            §4$9§()[param1] = this.§]!%§[param1];
            if(param2 && param2["particleMaterialOriginal"])
            {
               _loc4_ = 0;
               while(_loc4_ < int(param2["particleMaterialOriginal"].length))
               {
                  _loc5_ = param2["particleMaterialOriginal"][_loc4_];
                  §4$9§()[_loc5_] = this.§]!%§[_loc5_];
                  _loc4_++;
               }
            }
         }
         else
         {
            (_loc6_ = []).push([§^"9§.§5!G§,[["1",[param2["normal"]]],["2",[param2["normal2"]]]]]);
            _loc6_.push([§^"9§.§2"W§,[["1",[param2[§^"9§.§2"W§]]]]]);
            _loc6_.push([§"7§.§?#r§,[["1",[param2[§"7§.§?#r§]]]]]);
            _loc6_.push([§^"9§.§'$"§,[["1",[param2[§^"9§.§'$"§]]]]]);
            _loc6_.push([§"7§.§@$2§,[["1",[param2[§"7§.§@$2§]]]]]);
            _loc6_.push([§"7§.§3#N§,[["1",[param2[§"7§.§3#N§]]]]]);
            §8#f§(param1,_loc6_);
            if(param2 && param2["particleMaterialOriginal"])
            {
               _loc4_ = 0;
               while(_loc4_ < int(param2["particleMaterialOriginal"].length))
               {
                  _loc7_ = param2["particleMaterialOriginal"][_loc4_];
                  _loc8_ = param2["particleMaterial"][_loc4_];
                  §4$9§()[_loc7_] = §4$9§()[_loc8_];
                  _loc4_++;
               }
            }
         }
      }
   }
}
