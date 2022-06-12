package §^"F§
{
   public class §4!2§
   {
      
      public static const §4"X§:String = "PowerupBundle";
      
      public static const §`!4§:§^"K§ = new §^"K§("BirdFood","Super Seeds","Button_PowerUp1","PowerUpCount1","POWERUP1");
      
      public static const §<"O§:§^"K§ = new §^"K§("ExtraSpeed","King Sling","Button_PowerUp2","PowerUpCount2","POWERUP2");
      
      public static const §3"$§:§^"K§ = new §^"K§("LaserSight","Sling Scope","Button_PowerUp3","PowerUpCount3","POWERUP3");
      
      public static const §8"1§:§^"K§ = new §^"K§("Earthquake","Birdquake","Button_PowerUp4","PowerUpCount4","POWERUP4",null,false);
      
      public static const §%!U§:§^"K§ = new §^"K§("TNTDrop","Tnt Drop","Button_PowerUp5","PowerUpCount5","POWERUP5",["TNTDropSubscriptionDay","TNTDropSubscriptionTournament"]);
      
      public static const §6"O§:§^"K§ = new §^"K§("MightyEagle","Mighty Eagle","Button_MightyEagle","PowerUpCountME","MIGHTY_EAGLE",null,false);
      
      public static const §-Y§:§^"K§ = new §^"K§("ExtraBird","Wingman","Button_Wingman","PowerUpCountWM","POWERUP_WINGMAN",["ExtraBirdSubscriptionDay","ExtraBirdSubscriptionTournament"],false);
      
      public static const §!! §:§^"K§ = new §^"K§("Mushroom","Easter Mushroom","Button_PowerUp6","PowerUpCount6","POWERUP6");
      
      private static const §7!=§:Array = [§`!4§,§<"O§,§3"$§,§8"1§,§%!U§,§6"O§,§-Y§,§!! §];
       
      
      public function §4!2§()
      {
         super();
      }
      
      public static function get §1!V§() : Array
      {
         return §7!=§.concat();
      }
      
      public static function §7=§(param1:String) : §^"K§
      {
         var _loc2_:§^"K§ = null;
         for each(_loc2_ in §7!=§)
         {
            if(_loc2_.§,§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §return§(param1:String) : §^"K§
      {
         var _loc2_:§^"K§ = null;
         for each(_loc2_ in §7!=§)
         {
            if(_loc2_.§>",§ != null)
            {
               if(_loc2_.§>",§.indexOf(param1) != -1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public static function §2o§(param1:String) : §^"K§
      {
         var _loc2_:§^"K§ = null;
         for each(_loc2_ in §7!=§)
         {
            if(_loc2_.§1!#§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
