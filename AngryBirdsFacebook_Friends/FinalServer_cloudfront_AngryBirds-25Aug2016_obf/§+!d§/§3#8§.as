package §+!d§
{
   import §[#a§.§-k§;
   import §[#a§.§7#]§;
   
   public class §3#8§
   {
      
      public static const §0"&§:§&b§ = new §&b§("default","Default","Button_Slingshot_Normal","Button_Slingshot_Normal_Selected","","SLINGSHOT_NORMAL","","SLINGSHOT","DEFAULT_SLING_EFFECT","",0,0,"MovieClip_Slingshot_Default","Powerup_SuperSlingshot",true,true,3151368,null,"SlingshotStreched");
      
      public static const §]F§:§&b§ = new §&b§("WoodChipper","Wood Chipper","Button_Slingshot_Woodchipper","Button_Slingshot_WoodChipper_Selected","MovieClip_BuySling1","SLINGSHOT_WOODCHIPPER","All birds do much more damage to wood.","SLING_SHOT_WOOD","SLING_SHOT_WOOD_EFFECT","POWERUP_WOODCHIPPER_PARTICLE_",2,§-k§.§4#4§,"MovieClip_Slingshot_WoodChipper","WoodSlingshotActivate",false,false,2576158,null,"WoodSlingshotStretched");
      
      public static const §=#N§:§&b§ = new §&b§("StoneCutter","Stone Crusher","Button_Slingshot_Stonecutter","Button_Slingshot_StoneCutter_Selected","MovieClip_BuySling3","SLINGSHOT_STONECUTTER","All birds do much more damage to stone.","SLING_SHOT_STONE","SLING_SHOT_STONE_EFFECT","POWERUP_STONECUTTER_PARTICLE_",4,§-k§.§4#4§,"MovieClip_Slingshot_StoneCutter","StoneSlingshotActivate",false,false,8015388,null,"StoneSlingshotStretched");
      
      public static const §&##§:§&b§ = new §&b§("GlassBreaker","Glass Smasher","Button_Slingshot_Glassbreaker","Button_Slingshot_GlassBreaker_Selected","MovieClip_BuySling2","SLINGSHOT_GLASSBREAKER","All birds do much more damage to glass.","SLING_SHOT_GLASS","SLING_SHOT_GLASS_EFFECT","POWERUP_GLASSBREAKER_PARTICLE_",4,§-k§.§4#4§,"MovieClip_Slingshot_GlassBreaker","GlassSlingshotActivate",false,false,5460819,null,"GlassSlingshotStretched");
      
      public static const SLING_SHOT_GOLDEN:§&b§ = new §&b§("GoldenSling","Golden Slingshot","Button_Slingshot_Golden","Button_Slingshot_Golden_Selected","MovieClip_BuySling4","SLINGSHOT_GOLDEN","Fling the birds using the powerful Golden Slingshot. All birds do more damage to everything.","SLING_SHOT_GOLDEN","SLING_SHOT_GOLDEN_EFFECT","POWERUP_GOLDEN_PARTICLE_",2,§-k§.§4#4§,"MovieClip_Slingshot_Golden","GoldSlingshotActivate",false,false,5581073,null,"GoldSlingshotStretched");
      
      public static const §9$"§:§&b§ = new §&b§("Wishbone","Wishbone","Button_Slingshot_Wishbone","Button_Slingshot_WishBone_Selected","MovieClip_BuySling5","SLINGSHOT_WISHBONE","A spooky Halloween version of the Golden Slingshot. Only available for a limited time.","BONE_SLINGSHOT","BONE_SLINGSHOT_EFFECT","POWERUP_WISHBONE_PARTICLE_",4,§-k§.§4#4§,"MovieClip_Slingshot_WishBone","BoneSlingshotActivate",false,false,3151368,null,"BoneSlingshotStretched");
      
      public static const § "Z§:§&b§ = new §&b§("XmasTree","Jingle Sling","Button_Slingshot_XmasTree","Button_Slingshot_XmasTree_Selected","MovieClip_BuySling6","SLINGSHOT_XMASTREE","Shoot ornaments at the pigs for extra damage with this unique tree slingshot!","XMAS_2013_SLINGSHOT","XMAS_2013_SLINGSHOT_EFFECT","",0,0,"MovieClip_Slingshot_Xmas2013","XmasSlingshotActivate",false,false,3151368,"XmasSlingshotFired","XmasSlingshotStretched");
      
      public static const SLING_SHOT_BOUNCY:§&b§ = new §&b§("BouncySling","Bouncy Sling","Button_Slingshot_Bouncy","Button_Slingshot_Bouncy_Selected","Button_Bouncy_Unlock","SLINGSHOT_BOUNCY","The bouncy sling increases the bounciness of birds.\n\nReach Gold League to unlock the Bouncy Sling.","SLING_SHOT_BOUNCY","BOUNCY_SLINGSHOT_EFFECT","POWERUP_BOUNCYSLING_PARTICLE_",2,2,"MovieClip_Slingshot_Bouncy","BouncySlingshotActivation",true,false,6108444,"BouncySlingshotShot","BouncySlingshotStretched");
      
      public static const SLING_SHOT_DIAMOND:§&b§ = new §&b§("DiamondSling","Diamond Sling","Slingshot_Diamond","Diamond_Selected","Diamond_Unlock","SLINGSHOT_DIAMOND","The Diamond Sling shoots birds in a straight line, ignoring gravity.\n\nReach Diamond League to unlock the Diamond Sling.","SLING_SHOT_DIAMOND","DIAMOND_SLINGSHOT_EFFECT","POWERUP_DIAMONDSLING_PARTICLE_",2,§-k§.§4#4§,"MovieClip_Slingshot_Diamond","DiamondSlingshotActivation",true,false,5014687,"DiamondSlingshotShot","DiamondSlingshotStretched",§7#]§.§^#-§);
      
      private static const §;L§:Array = [§0"&§,§]F§,§=#N§,§&##§,SLING_SHOT_GOLDEN,§9$"§,§ "Z§,SLING_SHOT_BOUNCY,SLING_SHOT_DIAMOND];
       
      
      public function §3#8§()
      {
         super();
      }
      
      public static function get §1!H§() : Array
      {
         return §;L§.concat();
      }
      
      public static function §6#o§(param1:String) : §&b§
      {
         var _loc2_:§&b§ = null;
         for each(_loc2_ in §;L§)
         {
            if(_loc2_.§"!E§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §"A§(param1:String) : §&b§
      {
         var _loc2_:§&b§ = null;
         for each(_loc2_ in §;L§)
         {
            if(_loc2_.eventName == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §7"[§() : int
      {
         var _loc2_:§&b§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §;L§)
         {
            if(_loc2_.available)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
   }
}
