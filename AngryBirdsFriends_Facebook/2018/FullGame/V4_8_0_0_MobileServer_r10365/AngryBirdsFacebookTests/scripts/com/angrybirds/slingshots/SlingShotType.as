package com.angrybirds.slingshots
{
   import com.angrybirds.engine.objects.GravityFilterCategory;
   import com.angrybirds.engine.objects.LevelObject;
   
   public class SlingShotType
   {
      
      public static const SLING_SHOT_NORMAL:SlingShotDefinition = new SlingShotDefinition("default","Default","Button_Slingshot_Normal","Button_Slingshot_Normal_Selected","","SLINGSHOT_NORMAL","","SLINGSHOT","DEFAULT_SLING_EFFECT","",0,0,"MovieClip_Slingshot_Default","super_slingshot",true,true,3151368,null,"slingshot streched");
      
      public static const SLING_SHOT_WOOD_CHIPPER:SlingShotDefinition = new SlingShotDefinition("WoodChipper","Wood Chipper","Button_Slingshot_Woodchipper","Button_Slingshot_WoodChipper_Selected","MovieClip_BuySling1","SLINGSHOT_WOODCHIPPER","All birds do much more damage to wood.","SLING_SHOT_WOOD","SLING_SHOT_WOOD_EFFECT","POWERUP_WOODCHIPPER_PARTICLE_",2,LevelObject.TRAIL_PARTICLE_DEFAULT_COUNT,"MovieClip_Slingshot_WoodChipper","sling_wood_activation",false,false,2576158,null,"wood_slingshot_rubber_band");
      
      public static const SLING_SHOT_STONE_CUTTER:SlingShotDefinition = new SlingShotDefinition("StoneCutter","Stone Crusher","Button_Slingshot_Stonecutter","Button_Slingshot_StoneCutter_Selected","MovieClip_BuySling3","SLINGSHOT_STONECUTTER","All birds do much more damage to stone.","SLING_SHOT_STONE","SLING_SHOT_STONE_EFFECT","POWERUP_STONECUTTER_PARTICLE_",4,LevelObject.TRAIL_PARTICLE_DEFAULT_COUNT,"MovieClip_Slingshot_StoneCutter","sling_stone_activation",false,false,8015388,null,"stone_slingshot_rubber_band");
      
      public static const SLING_SHOT_GLASS_BREAKER:SlingShotDefinition = new SlingShotDefinition("GlassBreaker","Glass Smasher","Button_Slingshot_Glassbreaker","Button_Slingshot_GlassBreaker_Selected","MovieClip_BuySling2","SLINGSHOT_GLASSBREAKER","All birds do much more damage to glass.","SLING_SHOT_GLASS","SLING_SHOT_GLASS_EFFECT","POWERUP_GLASSBREAKER_PARTICLE_",4,LevelObject.TRAIL_PARTICLE_DEFAULT_COUNT,"MovieClip_Slingshot_GlassBreaker","sling_glass_activation",false,false,5460819,null,"glass_slingshot_rubber_band");
      
      public static const SLING_SHOT_GOLDEN:SlingShotDefinition = new SlingShotDefinition("GoldenSling","Golden Sling","Button_Slingshot_Golden","Button_Slingshot_Golden_Selected","MovieClip_BuySling4","SLINGSHOT_GOLDEN","Fling the birds using the powerful Golden Sling. All birds do more damage to everything.","SLING_SHOT_GOLDEN","SLING_SHOT_GOLDEN_EFFECT","POWERUP_GOLDEN_PARTICLE_",2,LevelObject.TRAIL_PARTICLE_DEFAULT_COUNT,"MovieClip_Slingshot_Golden","sling_gold_activation",false,false,5581073,null,"gold_slingshot_rubber_band");
      
      public static const SLING_SHOT_WISHBONE:SlingShotDefinition = new SlingShotDefinition("Wishbone","Wishbone","Button_Slingshot_Wishbone","Button_Slingshot_WishBone_Selected","MovieClip_BuySling5","SLINGSHOT_WISHBONE","A spooky Halloween version of the Golden Sling.","BONE_SLINGSHOT","BONE_SLINGSHOT_EFFECT","POWERUP_WISHBONE_PARTICLE_",4,LevelObject.TRAIL_PARTICLE_DEFAULT_COUNT,"MovieClip_Slingshot_WishBone","sling_bone_activation",false,false,3151368,null,"bone_slingshot_rubber_band");
      
      public static const SLING_SHOT_CHRISTMAS:SlingShotDefinition = new SlingShotDefinition("XmasTree","Jingle Sling","Button_Slingshot_XmasTree","Button_Slingshot_XmasTree_Selected","MovieClip_BuySling6","SLINGSHOT_XMASTREE","Shoot ornaments at the pigs for extra damage with this unique tree slingshot!","XMAS_2013_SLINGSHOT","XMAS_2013_SLINGSHOT_EFFECT","",0,0,"MovieClip_Slingshot_Xmas2013","xmas_slingshot_activation",false,false,3151368,"xmas_slingshot_release_shot","xmas_slingshot_rubber_band");
      
      public static const SLING_SHOT_BOUNCY:SlingShotDefinition = new SlingShotDefinition("BouncySling","Bouncy Sling","Button_Slingshot_Bouncy","Button_Slingshot_Bouncy_Selected","Button_Bouncy_Unlock","SLINGSHOT_BOUNCY","The bouncy sling increases the bounciness of birds.\n\nReach Gold League to unlock the Bouncy Sling.","SLING_SHOT_BOUNCY","BOUNCY_SLINGSHOT_EFFECT","POWERUP_BOUNCYSLING_PARTICLE_",2,2,"MovieClip_Slingshot_Bouncy","sling_rubber_activation",true,false,6108444,"slingshot_rubber_shot","slingshot_rubber_stretched");
      
      public static const SLING_SHOT_DIAMOND:SlingShotDefinition = new SlingShotDefinition("DiamondSling","Diamond Sling","Slingshot_Diamond","Diamond_Selected","Diamond_Unlock","SLINGSHOT_DIAMOND","The Diamond Sling shoots birds in a straight line, ignoring gravity.\n\nReach Diamond League to unlock the Diamond Sling.","SLING_SHOT_DIAMOND","DIAMOND_SLINGSHOT_EFFECT","POWERUP_DIAMONDSLING_PARTICLE_",2,LevelObject.TRAIL_PARTICLE_DEFAULT_COUNT,"MovieClip_Slingshot_Diamond","sling_diamond_activation",true,false,5014687,"slingshot_diamond_shot","slingshot_diamond_stretched",GravityFilterCategory.BIRD_UNAFFECTED_BY_GRAVITY);
      
      private static const sAllSlingShots:Array = [SLING_SHOT_NORMAL,SLING_SHOT_WOOD_CHIPPER,SLING_SHOT_STONE_CUTTER,SLING_SHOT_GLASS_BREAKER,SLING_SHOT_GOLDEN,SLING_SHOT_WISHBONE,SLING_SHOT_CHRISTMAS,SLING_SHOT_BOUNCY,SLING_SHOT_DIAMOND];
       
      
      public function SlingShotType()
      {
         super();
      }
      
      public static function get allSlingShots() : Array
      {
         return sAllSlingShots.concat();
      }
      
      public static function getSlingShotByID(id:String) : SlingShotDefinition
      {
         var definition:SlingShotDefinition = null;
         for each(definition in sAllSlingShots)
         {
            if(definition.identifier == id)
            {
               return definition;
            }
         }
         return null;
      }
      
      public static function getSlingShotByEventName(eventName:String) : SlingShotDefinition
      {
         var definition:SlingShotDefinition = null;
         for each(definition in sAllSlingShots)
         {
            if(definition.eventName == eventName)
            {
               return definition;
            }
         }
         return null;
      }
      
      public static function getAvailableSlingShotAmount() : int
      {
         var definition:SlingShotDefinition = null;
         var amount:int = 0;
         for each(definition in sAllSlingShots)
         {
            if(definition.available)
            {
               amount++;
            }
         }
         return amount;
      }
   }
}
