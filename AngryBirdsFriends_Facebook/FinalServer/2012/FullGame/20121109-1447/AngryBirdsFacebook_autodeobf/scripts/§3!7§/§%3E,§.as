package §3!7§
{
   public class §>,§
   {
      
      public static const §^Q§:§2G§ = new §2G§("BirdFood","Super Seeds","Button_PowerUp1","PowerUpCount1","POWERUP1");
      
      public static const §7!C§:§2G§ = new §2G§("ExtraSpeed","King Sling","Button_PowerUp2","PowerUpCount2","POWERUP2");
      
      public static const §%!X§:§2G§ = new §2G§("LaserSight","Sling Scope","Button_PowerUp3","PowerUpCount3","POWERUP3");
      
      public static const §&m§:§2G§ = new §2G§("Earthquake","Birdquake","Button_PowerUp4","PowerUpCount4","POWERUP4");
      
      public static const §^t§:§2G§ = new §2G§("MightyEagle","Mighty Eagle","Button_MightyEagle","PowerUpCountME","MIGHTY_EAGLE");
      
      public static const §," §:§2G§ = new §2G§("ExtraBird","Van Terrence","Button_ExtraBird","PowerUpCountVH","EXTRABIRD","ExtraBirdSubscription");
      
      private static const §`T§:Array = [§^Q§,§7!C§,§%!X§,§&m§,§^t§,§," §];
       
      
      public function §>,§()
      {
         super();
      }
      
      public static function get §%!#§() : Array
      {
         return §`T§.concat();
      }
      
      public static function §4!x§(param1:String) : §2G§
      {
         var _loc2_:§2G§ = null;
         for each(_loc2_ in §`T§)
         {
            if(_loc2_.§[2§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §+!a§(param1:String) : §2G§
      {
         var _loc2_:§2G§ = null;
         for each(_loc2_ in §`T§)
         {
            if(_loc2_.§<"?§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §'!i§(param1:String) : §2G§
      {
         var _loc2_:§2G§ = null;
         for each(_loc2_ in §`T§)
         {
            if(_loc2_.§]6§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
