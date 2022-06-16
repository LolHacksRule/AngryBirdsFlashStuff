package com.rovio.graphics
{
   import com.angrybirds.engine.objects.LevelObject;
   import com.angrybirds.engine.objects.LevelObjectBird;
   import flash.utils.Dictionary;
   
   public class FacebookAnimationManager extends AnimationManager
   {
       
      
      private var mOldBirdAnimations:Dictionary;
      
      private var mOldAnimations:Dictionary;
      
      public function FacebookAnimationManager(textureManager:TextureManager)
      {
         this.mOldBirdAnimations = new Dictionary();
         this.mOldAnimations = new Dictionary();
         super(textureManager);
      }
      
      override public function initializeAnimations() : void
      {
         var anim:Object = null;
         var i:int = 0;
         super.initializeAnimations();
         addAnimation("MISC_FB_SKIS",["BLOCK_FB_SKIS_1","BLOCK_FB_SKIS_2"]);
         addAnimation("POWERUP_BOMB",["POWERUP_GIFT"]);
         addAnimation("POWERUP_BOMB_PARACHUTE",["POWERUP_PARACHUTE"]);
         addAnimation("SLING_SHOT_KINGSLING",["SLING_SHOT_KINGSLING"]);
         addAnimation("SLING_SHOT_WOOD",["SLING_SHOT_WOOD_BACK","SLING_SHOT_WOOD_FRONT"]);
         addAnimation("SLING_SHOT_STONE",["SLING_SHOT_STONE_BACK","SLING_SHOT_STONE_FRONT"]);
         addAnimation("SLING_SHOT_GLASS",["SLING_SHOT_GLASS_BACK","SLING_SHOT_GLASS_FRONT"]);
         addAnimation("SLING_SHOT_GOLDEN",["SLING_SHOT_GOLDEN_BACK","SLING_SHOT_GOLDEN_FRONT"]);
         addAnimation("BONE_SLINGSHOT",["BONE_SLINGSHOT_BACK","BONE_SLINGSHOT_FRONT"]);
         addAnimation("SLING_SHOT_BOUNCY",["SLING_SHOT_BOUNCY_BACK","SLING_SHOT_BOUNCY_FRONT"]);
         addAnimation("SLING_SHOT_DIAMOND",["SLING_SHOT_DIAMOND_BACK","SLING_SHOT_DIAMOND_FRONT"]);
         addAnimation("XMAS_2013_SLINGSHOT",["SLING_SHOT_TREE_PART_1","SLING_SHOT_TREE_PART_1"]);
         addAnimation("SLING_SHOT_TREE_PART_1",["SLING_SHOT_TREE_PART_1"]);
         addAnimation("SLING_SHOT_TREE_PART_2",["SLING_SHOT_TREE_PART_2"]);
         addAnimation("SLING_SHOT_TREE_PART_3",["SLING_SHOT_TREE_PART_3"]);
         addAnimation("SLING_SHOT_TREE_PART_4",["SLING_SHOT_TREE_PART_4"]);
         addAnimation("SLING_SHOT_TREE_PART_5",["SLING_SHOT_TREE_PART_5"]);
         addAnimation("SLING_SHOT_TREE_PART_6",["SLING_SHOT_TREE_PART_6"]);
         addAnimation("LASER_DOT",["LASER_DOT"]);
         addAnimation("POWERUP_BOMB_UNWRAP",["PARTICLE_CHRISTMAS_WRAP_1","PARTICLE_CHRISTMAS_WRAP_2","PARTICLE_CHRISTMAS_WRAP_3","PARTICLE_CHRISTMAS_WRAP_4","PARTICLE_CHRISTMAS_WRAP_5"]);
         addAnimation("WONDERLAND_MISC_SPLASH",["PARTICLE_WONDERLAND_SPLASH_1","PARTICLE_WONDERLAND_SPLASH_2","PARTICLE_WONDERLAND_SPLASH_3","PARTICLE_WONDERLAND_SPLASH_4"]);
         addAnimation("POWERUP_SLINGSHOT_LIGHTNING",["POWERUP_EFFECT_LIGHTNING_1","POWERUP_EFFECT_LIGHTNING_2","POWERUP_EFFECT_LIGHTNING_3","POWERUP_EFFECT_LIGHTNING_4","POWERUP_EFFECT_LIGHTNING_5","POWERUP_EFFECT_LIGHTNING_6","POWERUP_EFFECT_LIGHTNING_7","POWERUP_EFFECT_LIGHTNING_8","POWERUP_EFFECT_LIGHTNING_9","POWERUP_EFFECT_LIGHTNING_10"]);
         addAnimation("BLAST_EFFECT",["POWERUP_EFFECT_BLAST_1","POWERUP_EFFECT_BLAST_2","POWERUP_EFFECT_BLAST_3","POWERUP_EFFECT_BLAST_4"]);
         addAnimation("POWERUP_POWERPOTION_ACTIVATION",["POWERUP_POWERPOTION_ACTIVATION_01","POWERUP_POWERPOTION_ACTIVATION_02","POWERUP_POWERPOTION_ACTIVATION_03","POWERUP_POWERPOTION_ACTIVATION_04","POWERUP_POWERPOTION_ACTIVATION_05","POWERUP_POWERPOTION_ACTIVATION_06","POWERUP_POWERPOTION_ACTIVATION_07","POWERUP_POWERPOTION_ACTIVATION_08","POWERUP_POWERPOTION_ACTIVATION_09","POWERUP_POWERPOTION_ACTIVATION_10"]);
         addAnimation("POWERPOTION_BLAST",["POWERUP_EFFECT_POWERPOTION_2","POWERUP_EFFECT_POWERPOTION_1","POWERUP_EFFECT_POWERPOTION_2"]);
         addAnimation("POWERUP_EFFECT_BURP",["POWERUP_EFFECT_BURB_1","POWERUP_EFFECT_BURB_2","POWERUP_EFFECT_BURB_3","POWERUP_EFFECT_BURB_4","POWERUP_EFFECT_BURB_5","POWERUP_EFFECT_BURB_6","POWERUP_EFFECT_BURB_7","POWERUP_EFFECT_BURB_8","POWERUP_EFFECT_BURB_9","POWERUP_EFFECT_BURB_10"]);
         addAnimation("POWERUP_EFFECT_BUBBLE",["POWERUP_EFFECT_BUBBLE_1","POWERUP_EFFECT_BUBBLE_2","POWERUP_EFFECT_BUBBLE_3","POWERUP_EFFECT_BUBBLE_4","POWERUP_EFFECT_BUBBLE_5","POWERUP_EFFECT_BUBBLE_6","POWERUP_EFFECT_BUBBLE_7"]);
         addAnimation("POWERUP_POWERPOTION_TRAIL",["POWERUP_EFFECT_BUBBLE_1","POWERUP_EFFECT_BUBBLE_2","POWERUP_EFFECT_BUBBLE_3","POWERUP_EFFECT_BUBBLE_4","POWERUP_EFFECT_BUBBLE_5"]);
         addAnimation("POWERUP_BOUNCYSLING_PARTICLE_1",["POWERUP_BOUNCYSLING_PARTICLE_1"]);
         addAnimation("POWERUP_BOUNCYSLING_PARTICLE_2",["POWERUP_BOUNCYSLING_PARTICLE_2"]);
         addAnimation("POWERUP_BOUNCYSLING_PARTICLE_3",["POWERUP_BOUNCYSLING_PARTICLE_3"]);
         addAnimation("POWERUP_BOUNCYSLING_PARTICLE_4",["POWERUP_BOUNCYSLING_PARTICLE_4"]);
         addAnimation("POWERUP_BOUNCYSLING_PARTICLE_5",["POWERUP_BOUNCYSLING_PARTICLE_5"]);
         addAnimation("POWERUP_PARTICLE_BUBBLE",["POWERUP_EFFECT_BUBBLE_1","BURP_BUBBLE_1","BURP_BUBBLE_2","BURP_BUBBLE_3","BURP_BUBBLE_4","BURP_BUBBLE_5"]);
         addAnimation("POWERUP_EFFECT_POTIONCLOUD",["POWERUP_EFFECT_POTIONCLOUD_3","POWERUP_EFFECT_POTIONCLOUD_2","POWERUP_EFFECT_POTIONCLOUD_1"]);
         addAnimation("STAR_PARTICLE",["POWERUP_EFFECT_STAR_1","POWERUP_EFFECT_STAR_2","POWERUP_EFFECT_STAR_3","POWERUP_EFFECT_STAR_4","POWERUP_EFFECT_STAR_5","POWERUP_EFFECT_STAR_6"]);
         addAnimation("TELESCOPE_MOUNT",["POWERUP_EFFECT_TELESCOPE_1"]);
         addAnimation("TELESCOPE_TUBE",["POWERUP_EFFECT_TELESCOPE_2"]);
         addAnimation("EARTHQUAKE_DUST_CLOUD",["POWERUP_EFFECT_DUST_CLOUD_1"]);
         addAnimation("EARTHQUAKE_PARTICLE_1",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_1"]);
         addAnimation("EARTHQUAKE_PARTICLE_2",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_2"]);
         addAnimation("EARTHQUAKE_PARTICLE_3",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_3"]);
         addAnimation("EARTHQUAKE_PARTICLE_4",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_4"]);
         addAnimation("EARTHQUAKE_PARTICLE_5",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_5"]);
         addAnimation("EARTHQUAKE_PARTICLE_6",["POWERUP_EFFECT_BIRDQUAKE_PARTICLE_6"]);
         addAnimation("PARTICLE_HALLOWEEN_STONE",["PARTICLE_HALLOWEEN_STONE_1","PARTICLE_HALLOWEEN_STONE_2","PARTICLE_HALLOWEEN_STONE_3"]);
         addAnimation("MISC_FB_GRASS_SMALL",["MISC_FB_GRASS_SMALL_1_EASTER_2014"]);
         addAnimation("MISC_FB_GRASS_MEDIUM",["MISC_FB_GRASS_MEDIUM_1_EASTER_2014"]);
         addAnimation("MISC_EASTER_BLOCK_FLOWER_L",["MISC_EASTER_BLOCK_FLOWER_L_1_EASTER_2014"]);
         addAnimation("MISC_EASTER_BLOCK_FLOWER_M",["MISC_EASTER_BLOCK_FLOWER_M_1_EASTER_2014"]);
         addAnimation("PARTICLE_EASTER_FLOWER_1",["PARTICLE_EASTER_FLOWER_1_EASTER_2014"]);
         addAnimation("PARTICLE_EASTER_FLOWER_2",["PARTICLE_EASTER_FLOWER_2_EASTER_2014"]);
         addAnimation("PARTICLE_EASTER_FLOWER_3",["PARTICLE_EASTER_FLOWER_3_EASTER_2014"]);
         addAnimation("WINGMAN_EFFECT_1",["WINGMAN_EFFECTS_1"]);
         addAnimation("WINGMAN_EFFECT_2",["WINGMAN_EFFECTS_2"]);
         addAnimation("WINGMAN_EFFECT_3",["WINGMAN_EFFECTS_3"]);
         addAnimation("WINGMAN_EFFECT_4",["WINGMAN_EFFECTS_4"]);
         addAnimation("WINGMAN_EFFECT_5",["WINGMAN_EFFECTS_5"]);
         addAnimation("WINGMAN_EFFECT_6",["WINGMAN_EFFECTS_6"]);
         addAnimation("WINGMAN_EFFECT_7",["WINGMAN_EFFECTS_7"]);
         addAnimation("MISC_FB_SHOT_CANNON",["NEW17_CANNON_SHOT"]);
         addAnimation("PARTICLE_CANNON_SHOT",["NEW17_CANNON_PARTICLE_1","NEW17_CANNON_PARTICLE_2","NEW17_CANNON_PARTICLE_3","NEW17_CANNON_PARTICLE_4","NEW17_CANNON_PARTICLE_5"]);
         addContainerAnimation("MISC_FB_CANNON",[["normal",["NEW17_CANNON_1"]],["shoot",["NEW17_CANNON_1","NEW17_CANNON_2","NEW17_CANNON_3","NEW17_CANNON_4","NEW17_CANNON_5","NEW17_CANNON_6","NEW17_CANNON_7","NEW17_CANNON_8"],[137.5,137.5,137.5,137.5,137.5,137.5,137.5,137.5]]]);
         addAnimation("SMOKE_CANNONCLOUD",["SMOKE_WATERCANNONCLOUD_1","SMOKE_WATERCANNONCLOUD_2","SMOKE_WATERCANNONCLOUD_3","SMOKE_WATERCANNONCLOUD_4","SMOKE_WATERCANNONCLOUD_5"]);
         addAnimation("MISC_FB_GRASS",["MISC_FB_GRASS_3_CHUCK_2014"]);
         addContainerAnimation("MISC_FAIRY_BLOCK_4X4",[["normal",[["1",["MISC_WONDERLAND_GLOBE_1","MISC_WONDERLAND_GLOBE_2","MISC_WONDERLAND_GLOBE_3","MISC_WONDERLAND_GLOBE_4"],[100,100,100,100]]]]]);
         addAnimation("PARTICLE_WONDERLAND_DUST",["PARTICLE_WONDERLAND_DUST_1","PARTICLE_WONDERLAND_DUST_2","PARTICLE_WONDERLAND_DUST_3"]);
         addAnimation("MISC_WONDERLAND_EGG_1",["MISC_WONDERLAND_EGG_1"]);
         addAnimation("MISC_WONDERLAND_EGG_2",["MISC_WONDERLAND_EGG_2"]);
         addAnimation("MISC_WONDERLAND_EGG_3",["MISC_WONDERLAND_EGG_3"]);
         addAnimation("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1",["POWERUP_TREESLING_AMMO"]);
         addAnimation("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2",["POWERUP_TREESLING_AMMO2"]);
         addAnimation("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3",["POWERUP_TREESLING_AMMO3"]);
         addAnimation("PARTICLE_CHRISTMAS_SLINGSHOT_1_1",["POWERUP_TREESLING_PARTICLE_1"]);
         addAnimation("PARTICLE_CHRISTMAS_SLINGSHOT_1_2",["POWERUP_TREESLING_PARTICLE_2"]);
         addAnimation("PARTICLE_CHRISTMAS_SLINGSHOT_1_3",["POWERUP_TREESLING_PARTICLE_3"]);
         addAnimation("PARTICLE_CHRISTMAS_SLINGSHOT_1_4",["POWERUP_TREESLING_PARTICLE_4"]);
         addAnimation("PARTICLE_CHRISTMAS_SLINGSHOT_2_1",["POWERUP_TREESLING_PARTICLE2_1"]);
         addAnimation("PARTICLE_CHRISTMAS_SLINGSHOT_2_2",["POWERUP_TREESLING_PARTICLE2_2"]);
         addAnimation("PARTICLE_CHRISTMAS_SLINGSHOT_2_3",["POWERUP_TREESLING_PARTICLE2_3"]);
         addAnimation("PARTICLE_CHRISTMAS_SLINGSHOT_2_4",["POWERUP_TREESLING_PARTICLE2_4"]);
         addAnimation("PARTICLE_CHRISTMAS_SLINGSHOT_3_1",["POWERUP_TREESLING_PARTICLE3_1"]);
         addAnimation("PARTICLE_CHRISTMAS_SLINGSHOT_3_2",["POWERUP_TREESLING_PARTICLE3_2"]);
         addAnimation("PARTICLE_CHRISTMAS_SLINGSHOT_3_3",["POWERUP_TREESLING_PARTICLE3_3"]);
         addAnimation("PARTICLE_CHRISTMAS_SLINGSHOT_3_4",["POWERUP_TREESLING_PARTICLE3_4"]);
         addAnimation("XMAS_ORNAMENT_EXPLOSION",["EXPLOSION_ORNAMENT_1","EXPLOSION_ORNAMENT_2","EXPLOSION_ORNAMENT_3","EXPLOSION_ORNAMENT_4","EXPLOSION_ORNAMENT_5","EXPLOSION_ORNAMENT_6"]);
         addContainerAnimation("PIG_PORKADOR",[["normal",[["1",["PIG_CYPORKADOR_1_WINGMAN_2_2014"]],["2",["PIG_CYPORKADOR_2_WINGMAN_2_2014"]]]]]);
         addContainerAnimation("PIG_PIGTOPUS",[["normal",[["1",["PIG_PIGTOPUS_1"]],["2",["PIG_PIGTOPUS_2"]]]]]);
         addContainerAnimation("PIG_DRINKHAT",[["normal",[["1",["PIG_DRINKHAT_1_WORLD_CUP_2014"]],["2",["PIG_DRINKHAT_2_WORLD_CUP_2014"]]]]]);
         addContainerAnimation("PIG_BASIC_SMALL_ZOMBIE",[["normal",[["1",["PIG_ZOMBIE_SMALL_01"]],["2",["PIG_ZOMBIE_SMALL_02"]]]]]);
         addContainerAnimation("PIG_BASIC_MEDIUM_ZOMBIE",[["normal",[["1",["PIG_ZOMBIE_MEDIUM_01"]],["2",["PIG_ZOMBIE_MEDIUM_02"]]]]]);
         addContainerAnimation("PIG_BASIC_BIG_ZOMBIE",[["normal",[["1",["PIG_ZOMBIE_BIG_01"]],["2",["PIG_ZOMBIE_BIG_02"]]]]]);
         addContainerAnimation("PIG_HELMET_ZOMBIE",[["normal",[["1",["PIG_ZOMBIE_HELMET_01"]],["2",["PIG_ZOMBIE_HELMET_01"]]]]]);
         addContainerAnimation("PIG_MUSTACHE_ZOMBIE",[["normal",["PIG_ZOMBIE_FRANKENSWINE_01"]]]);
         addContainerAnimation("HALLOWEEN_ABOMINATION_PIG",[["normal",["PIG_HALLOWEEN_BOSS_1"]]]);
         addContainerAnimation("PIG_BASIC_SMALL_INFECTED",[["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]],["blink",["PIG_BASIC_SMALL_01_BLINK","PIG_BASIC_SMALL_02_BLINK","PIG_BASIC_SMALL_03_BLINK"]],["yell",["PIG_BASIC_SMALL_01_SMILE","PIG_BASIC_SMALL_02_SMILE","PIG_BASIC_SMALL_03_SMILE"]]]);
         addContainerAnimation("PIG_BASIC_MEDIUM_INFECTED",[["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]],["blink",["PIG_BASIC_MEDIUM_01_BLINK","PIG_BASIC_MEDIUM_02_BLINK","PIG_BASIC_MEDIUM_03_BLINK"]],["yell",["PIG_BASIC_MEDIUM_01_SMILE","PIG_BASIC_MEDIUM_02_SMILE","PIG_BASIC_MEDIUM_03_SMILE"]]]);
         addContainerAnimation("PIG_BASIC_BIG_INFECTED",[["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]],["blink",["PIG_BASIC_BIG_01_BLINK","PIG_BASIC_BIG_02_BLINK","PIG_BASIC_BIG_03_BLINK"]],["yell",["PIG_BASIC_BIG_01_SMILE","PIG_BASIC_BIG_02_SMILE","PIG_BASIC_BIG_03_SMILE"]]]);
         addContainerAnimation("PIG_HELMET_INFECTED",[["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]],["blink",["PIG_HELMET_01_BLINK","PIG_HELMET_02_BLINK","PIG_HELMET_03_BLINK"]],["yell",["PIG_HELMET_01_SMILE","PIG_HELMET_02_SMILE","PIG_HELMET_03_SMILE"]]]);
         addContainerAnimation("PIG_MUSTACHE_INFECTED",[["normal",["PIG_FRANKENSWINE_01","PIG_FRANKENSWINE_02","PIG_FRANKENSWINE_03"]],["blink",["PIG_FRANKENSWINE_01_BLINK","PIG_FRANKENSWINE_02_BLINK","PIG_FRANKENSWINE_03_BLINK"]],["yell",["PIG_FRANKENSWINE__01_SMILE","PIG_FRANKENSWINE_02_SMILE","PIG_FRANKENSWINE_03_SMILE"]]]);
         addContainerAnimation("PIG_CHEF",[["normal",[["1",["MISC_THEMED_CHEF_PIG_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_15_ABBA_2015"]]]],["blink",[["1",["MISC_THEMED_CHEF_PIG_BLINK_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_BLINK_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_BLINK_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_BLINK_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_BLINK_5_ABBA_2015"]]]],["yell",[["1",["MISC_THEMED_CHEF_PIG_OPENMOUTH_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_OPENMOUTH_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_OPENMOUTH_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_OPENMOUTH_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_OPENMOUTH_5_ABBA_2015"]]]]]);
         addContainerAnimation("PIG_CHEF",[["normal",[["1",["MISC_THEMED_CHEF_PIG_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_15_ABBA_2015"]]]],["blink",[["1",["MISC_THEMED_CHEF_PIG_BLINK_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_BLINK_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_BLINK_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_BLINK_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_BLINK_5_ABBA_2015"]]]],["yell",[["1",["MISC_THEMED_CHEF_PIG_OPENMOUTH_1_ABBA_2015"]],["2",["MISC_THEMED_CHEF_PIG_OPENMOUTH_2_ABBA_2015"]],["3",["MISC_THEMED_CHEF_PIG_OPENMOUTH_3_ABBA_2015"]],["4",["MISC_THEMED_CHEF_PIG_OPENMOUTH_4_ABBA_2015"]],["5",["MISC_THEMED_CHEF_PIG_OPENMOUTH_5_ABBA_2015"]]]]]);
         for each(anim in [{
            "name":"PARTICLE_CHROME_GREEN_",
            "count":3
         },{
            "name":"PARTICLE_CHROME_RED_",
            "count":3
         }])
         {
            for(i = 1; i <= anim.count; i++)
            {
               addAnimation(anim.name + i,[anim.name + i]);
            }
         }
         this.initializeBirdAnimations();
         addAnimation("DEFAULT_SLING_EFFECT",["POWERUP_DEFAULTSLING_SEQUENCE_1","POWERUP_DEFAULTSLING_SEQUENCE_2","POWERUP_DEFAULTSLING_SEQUENCE_3","POWERUP_DEFAULTSLING_SEQUENCE_4","POWERUP_DEFAULTSLING_SEQUENCE_5","POWERUP_DEFAULTSLING_SEQUENCE_6","POWERUP_DEFAULTSLING_SEQUENCE_7","POWERUP_DEFAULTSLING_SEQUENCE_8","POWERUP_DEFAULTSLING_SEQUENCE_9","POWERUP_DEFAULTSLING_SEQUENCE_10"]);
         addAnimation("SLING_SHOT_WOOD_EFFECT",["POWERUP_WOODCHIPPER_SEQUENCE_1","POWERUP_WOODCHIPPER_SEQUENCE_2","POWERUP_WOODCHIPPER_SEQUENCE_3","POWERUP_WOODCHIPPER_SEQUENCE_4","POWERUP_WOODCHIPPER_SEQUENCE_5","POWERUP_WOODCHIPPER_SEQUENCE_6","POWERUP_WOODCHIPPER_SEQUENCE_7","POWERUP_WOODCHIPPER_SEQUENCE_8","POWERUP_WOODCHIPPER_SEQUENCE_9"]);
         addAnimation("SLING_SHOT_STONE_EFFECT",["POWERUP_STONECUTTER_SEQUENCE_1","POWERUP_STONECUTTER_SEQUENCE_2","POWERUP_STONECUTTER_SEQUENCE_3","POWERUP_STONECUTTER_SEQUENCE_4","POWERUP_STONECUTTER_SEQUENCE_5","POWERUP_STONECUTTER_SEQUENCE_6","POWERUP_STONECUTTER_SEQUENCE_7","POWERUP_STONECUTTER_SEQUENCE_8","POWERUP_STONECUTTER_SEQUENCE_9"]);
         addAnimation("SLING_SHOT_GLASS_EFFECT",["POWERUP_GLASSBREAKER_SEQUENCE_1","POWERUP_GLASSBREAKER_SEQUENCE_2","POWERUP_GLASSBREAKER_SEQUENCE_3","POWERUP_GLASSBREAKER_SEQUENCE_4","POWERUP_GLASSBREAKER_SEQUENCE_5","POWERUP_GLASSBREAKER_SEQUENCE_6","POWERUP_GLASSBREAKER_SEQUENCE_7","POWERUP_GLASSBREAKER_SEQUENCE_8","POWERUP_GLASSBREAKER_SEQUENCE_9"]);
         addAnimation("SLING_SHOT_GOLDEN_EFFECT",["POWERUP_GOLDEN_SEQUENCE_1","POWERUP_GOLDEN_SEQUENCE_2","POWERUP_GOLDEN_SEQUENCE_3","POWERUP_GOLDEN_SEQUENCE_4","POWERUP_GOLDEN_SEQUENCE_5","POWERUP_GOLDEN_SEQUENCE_6","POWERUP_GOLDEN_SEQUENCE_7","POWERUP_GOLDEN_SEQUENCE_8","POWERUP_GOLDEN_SEQUENCE_9"]);
         addAnimation("BONE_SLINGSHOT_EFFECT",["POWERUP_WISHBONE_SEQUENCE_1","POWERUP_WISHBONE_SEQUENCE_2","POWERUP_WISHBONE_SEQUENCE_3","POWERUP_WISHBONE_SEQUENCE_4","POWERUP_WISHBONE_SEQUENCE_5","POWERUP_WISHBONE_SEQUENCE_6","POWERUP_WISHBONE_SEQUENCE_7","POWERUP_WISHBONE_SEQUENCE_8","POWERUP_WISHBONE_SEQUENCE_9"]);
         addAnimation("XMAS_2013_SLINGSHOT_EFFECT",["POWERUP_TREESLING_SEQUENCE_1","POWERUP_TREESLING_SEQUENCE_2","POWERUP_TREESLING_SEQUENCE_3","POWERUP_TREESLING_SEQUENCE_4","POWERUP_TREESLING_SEQUENCE_5","POWERUP_TREESLING_SEQUENCE_6","POWERUP_TREESLING_SEQUENCE_7","POWERUP_TREESLING_SEQUENCE_8","POWERUP_TREESLING_SEQUENCE_9","POWERUP_TREESLING_SEQUENCE_10"]);
         addAnimation("BOUNCY_SLINGSHOT_EFFECT",["POWERUP_BOUNCYSLING_SEQUENCE_1","POWERUP_BOUNCYSLING_SEQUENCE_2","POWERUP_BOUNCYSLING_SEQUENCE_3","POWERUP_BOUNCYSLING_SEQUENCE_4","POWERUP_BOUNCYSLING_SEQUENCE_5","POWERUP_BOUNCYSLING_SEQUENCE_6","POWERUP_BOUNCYSLING_SEQUENCE_7","POWERUP_BOUNCYSLING_SEQUENCE_8","POWERUP_BOUNCYSLING_SEQUENCE_9"]);
         addAnimation("DIAMOND_SLINGSHOT_EFFECT",["POWERUP_DIAMONDSLING_SEQUENCE_1","POWERUP_DIAMONDSLING_SEQUENCE_2","POWERUP_DIAMONDSLING_SEQUENCE_3","POWERUP_DIAMONDSLING_SEQUENCE_4","POWERUP_DIAMONDSLING_SEQUENCE_5","POWERUP_DIAMONDSLING_SEQUENCE_6","POWERUP_DIAMONDSLING_SEQUENCE_7","POWERUP_DIAMONDSLING_SEQUENCE_8","POWERUP_DIAMONDSLING_SEQUENCE_9"]);
         for each(anim in [{
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
            for(i = 1; i <= anim.count; i++)
            {
               addAnimation(anim.name + i,[anim.name + i]);
            }
         }
         addAnimation("TEMPORARY_BLOCK",["MISC_QUESTION_MARK"]);
         addAnimation("NEW24_PORTAL_RED_PUFF",["NEW24_PORTAL_RED_PUFF_1","NEW24_PORTAL_RED_PUFF_2","NEW24_PORTAL_RED_PUFF_3","NEW24_PORTAL_RED_PUFF_4","NEW24_PORTAL_RED_PUFF_5","NEW24_PORTAL_RED_PUFF_6"]);
         addAnimation("NEW24_PORTAL_BLUE_PUFF",["NEW24_PORTAL_BLUE_PUFF_1","NEW24_PORTAL_BLUE_PUFF_2","NEW24_PORTAL_BLUE_PUFF_3","NEW24_PORTAL_BLUE_PUFF_4","NEW24_PORTAL_BLUE_PUFF_5","NEW24_PORTAL_BLUE_PUFF_6"]);
         addAnimation("COLLECTIBLE_ITEM_DEFAULT",["MISC_WONDERLAND_FLOWER_1"]);
         addAnimation("POWERUP_PUMPKIN",["POWERUP_HALLOWEEN_2017_PUMPKIN_01","POWERUP_HALLOWEEN_2017_PUMPKIN_02","POWERUP_HALLOWEEN_2017_PUMPKIN_03"],[300,300,300]);
      }
      
      protected function initializeBirdAnimations() : void
      {
         addContainerAnimation("BIRD_VANTERRENCE",[["normal",["BIRD_VANTERENCE_1"]],["blink",["BIRD_VANTERENCE_BLINK"]],["fly",["BIRD_VANTERENCE_FLYING"]],["yell",["BIRD_VANTERENCE_YELL"]],["fly_yell",["BIRD_VANTERENCE_FLYING_YELL"]]]);
         addContainerAnimation("BIRD_WINGMAN",[["normal",["BIRD_WINGMAN_1"]],["blink",["BIRD_WINGMAN_BLINK"]],["fly",["BIRD_WINGMAN_FLYING_1"]],["yell",["BIRD_WINGMAN_YELL"]],["fly_yell",["BIRD_WINGMAN_FLYING_YELL_1"]]]);
         addContainerAnimation("BIRD_ORANGE",[["normal",["BIRD_ORANGE_YELL"]],["blink",["BIRD_ORANGE_BLINK"]],["fly",["BIRD_ORANGE_YELL"]],["yell",["BIRD_ORANGE_EXCITED"]],["fly_yell",["BIRD_ORANGE_EXCITED"]],["special",["BIRD_ORANGE_BALLOON"]]]);
      }
      
      public function replaceAnimationFrames(animationId:String, frames:Dictionary, brandId:String = "") : void
      {
         var i:int = 0;
         var animFrameName:String = null;
         var animations:Array = null;
         var animFrameNameOrg:String = null;
         var animFrameNameReplace:String = null;
         if(!this.mOldAnimations[animationId])
         {
            this.mOldAnimations[animationId] = getAnimations()[animationId];
            getAnimations()[animationId] = null;
            if(frames && frames["particleMaterialOriginal"])
            {
               for(i = 0; i < int(frames["particleMaterialOriginal"].length); i++)
               {
                  animFrameName = frames["particleMaterialOriginal"][i];
                  this.mOldAnimations[animFrameName] = getAnimations()[animFrameName];
               }
            }
         }
         getAnimations()[animationId] = null;
         if(brandId == "")
         {
            getAnimations()[animationId] = this.mOldAnimations[animationId];
            if(frames && frames["particleMaterialOriginal"])
            {
               for(i = 0; i < int(frames["particleMaterialOriginal"].length); i++)
               {
                  animFrameName = frames["particleMaterialOriginal"][i];
                  getAnimations()[animFrameName] = this.mOldAnimations[animFrameName];
               }
            }
         }
         else
         {
            animations = [];
            animations.push([LevelObject.ANIMATION_NORMAL,[["1",[frames["normal"]]],["2",[frames["normal2"]]]]]);
            addContainerAnimation(animationId,animations);
            if(frames && frames["particleMaterialOriginal"])
            {
               for(i = 0; i < int(frames["particleMaterialOriginal"].length); i++)
               {
                  animFrameNameOrg = frames["particleMaterialOriginal"][i];
                  animFrameNameReplace = frames["particleMaterial"][i];
                  getAnimations()[animFrameNameOrg] = getAnimations()[animFrameNameReplace];
               }
            }
         }
      }
      
      public function replaceAnimationFramesForBirds(animationId:String, frames:Dictionary, brandId:String = "") : void
      {
         var i:int = 0;
         var animFrameName:String = null;
         var animations:Array = null;
         var animFrameNameOrg:String = null;
         var animFrameNameReplace:String = null;
         if(!this.mOldBirdAnimations[animationId])
         {
            this.mOldBirdAnimations[animationId] = getAnimations()[animationId];
            getAnimations()[animationId] = null;
            if(frames && frames["particleMaterialOriginal"])
            {
               for(i = 0; i < int(frames["particleMaterialOriginal"].length); i++)
               {
                  animFrameName = frames["particleMaterialOriginal"][i];
                  this.mOldBirdAnimations[animFrameName] = getAnimations()[animFrameName];
               }
            }
         }
         getAnimations()[animationId] = null;
         if(brandId == "")
         {
            getAnimations()[animationId] = this.mOldBirdAnimations[animationId];
            if(frames && frames["particleMaterialOriginal"])
            {
               for(i = 0; i < int(frames["particleMaterialOriginal"].length); i++)
               {
                  animFrameName = frames["particleMaterialOriginal"][i];
                  getAnimations()[animFrameName] = this.mOldBirdAnimations[animFrameName];
               }
            }
         }
         else
         {
            animations = [];
            animations.push([LevelObject.ANIMATION_NORMAL,[["1",[frames["normal"]]],["2",[frames["normal2"]]]]]);
            animations.push([LevelObject.ANIMATION_BLINK,[["1",[frames[LevelObject.ANIMATION_BLINK]]]]]);
            animations.push([LevelObjectBird.ANIMATION_FLY,[["1",[frames[LevelObjectBird.ANIMATION_FLY]]]]]);
            animations.push([LevelObject.ANIMATION_SCREAM,[["1",[frames[LevelObject.ANIMATION_SCREAM]]]]]);
            animations.push([LevelObjectBird.ANIMATION_FLY_SCREAM,[["1",[frames[LevelObjectBird.ANIMATION_FLY_SCREAM]]]]]);
            animations.push([LevelObjectBird.ANIMATION_SPECIAL,[["1",[frames[LevelObjectBird.ANIMATION_SPECIAL]]]]]);
            addContainerAnimation(animationId,animations);
            if(frames && frames["particleMaterialOriginal"])
            {
               for(i = 0; i < int(frames["particleMaterialOriginal"].length); i++)
               {
                  animFrameNameOrg = frames["particleMaterialOriginal"][i];
                  animFrameNameReplace = frames["particleMaterial"][i];
                  getAnimations()[animFrameNameOrg] = getAnimations()[animFrameNameReplace];
               }
            }
         }
      }
   }
}
