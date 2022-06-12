package §-;§
{
   public class §+"d§
   {
      
      public static const §<!Y§:String = "PowerupBundle";
      
      public static const §1J§:§<K§ = new §<K§("BirdFood","Power Potion","Button_PowerUp1","POWERUP1",["BirdFoodSubscriptionTournament"],"Supersize your bird! Power Potion turns any bird into a pig-popping giant!","Supersize your birds! Infinite Power Potion for this week\'s tournament.");
      
      public static const §[p§:§<K§ = new §<K§("ExtraSpeed","King Sling","Button_PowerUp2","POWERUP2",["ExtraSpeedSubscriptionTournament"],"Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!","Hail to the sling! Infinite King Sling for this week\'s tournament.");
      
      public static const §#T§:§<K§ = new §<K§("LaserSight","Sling Scope","Button_PowerUp3","POWERUP3",["LaserSightSubscriptionTournament"],"Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!","Aim to please! Infinite Sling Scope for this week\'s tournament.");
      
      public static const §&!w§:§<K§ = new §<K§("Earthquake","Birdquake","Button_PowerUp4","POWERUP4",["EarthquakeSubscriptionTournament"],"Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!","Rattle the battle! Infinite Birdquake for this week\'s tournament.",false);
      
      public static const §,!$§:§<K§ = new §<K§("Mushroom","Mushbloom","Button_PowerUp5","POWERUP5",null,"Create a mighty bloom of mushrooms beneath the pigs and topple their towers! Only useable in the Pig Tales levels.");
      
      public static const §!"§:§<K§ = new §<K§("TNTDrop","Tnt Drop","Button_PowerUp6","POWERUP6",["TNTDropSubscriptionDay","TNTDropSubscriptionTournament"]);
      
      public static const §true §:§<K§ = new §<K§("ExchangedItem","Pumpkin Drop","Button_PowerUp7","POWERUP7",null);
      
      public static const §?"$§:§<K§ = new §<K§("BoomBox","Boombox","Button_PowerUp8","POWERUP8",null,"Have a blast and blow up the pigs with the Boombox power-up.","",false);
      
      public static const § !T§:§<K§ = new §<K§("MightyEagle","Mighty Eagle","Button_PowerUpMightyEagle","POWERUP_MIGHTY_EAGLE",null,"Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.",false);
      
      public static const §]#_§:§<K§ = new §<K§("ExtraBird","Wingman","Button_PowerUpWingman","POWERUP_WINGMAN",["ExtraBirdSubscriptionDay","ExtraBirdSubscriptionTournament"],"Call the Wingman to demolish your enemies and impress your friends.","Call the Wingman! Infinite Wingman for this week\'s tournament.",false);
      
      public static const sWeek2Bundle:§<K§ = new §<K§("Xmas2013W2","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const sWeek3Bundle:§<K§ = new §<K§("Xmas2013W3","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const sWeek4Bundle:§<K§ = new §<K§("Xmas2013W4","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const §;#N§:§<K§ = new §<K§("PowerupBundle","Power-Up Pack",null,null,null,"Each pack contains a Wingman, Power Potion, Sling Scope, King Sling, Birdquake and Boombox making it the perfect solution to all your piggy problems.","Each pack contains a Wingman, Power Potion, Sling Scope, King Sling, Birdquake and Boombox making it the perfect solution to all your piggy problems.",false);
      
      private static const §]"-§:Array = [sWeek2Bundle,sWeek3Bundle,sWeek4Bundle];
      
      public static const §="q§:Array = [§]#_§.§1#7§,§ !T§.§1#7§];
      
      public static const §8"z§:Array = [§1J§,§[p§,§?"$§,§&!w§,§!"§,§true §,§ !T§,§]#_§,§,!$§,§#T§];
      
      public static const §-$D§:Array = [§1J§,§[p§,§#T§,§&!w§,§?"$§,§]#_§];
      
      public static const §catch§:Array = [§1J§,§[p§,§#T§,§&!w§,§ !T§,§?"$§,§]#_§];
      
      public static const §%#`§:Array = [§1J§,§[p§,§#T§,§&!w§,§,!$§,§ !T§,§?"$§,§]#_§];
       
      
      public function §+"d§()
      {
         super();
      }
      
      public static function get §]V§() : Array
      {
         return §8"z§.concat();
      }
      
      public static function §<!9§(param1:String) : §<K§
      {
         var _loc2_:§<K§ = null;
         for each(_loc2_ in §8"z§)
         {
            if(_loc2_.eventName == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function § !^§(param1:String) : §<K§
      {
         var _loc2_:§<K§ = null;
         for each(_loc2_ in §8"z§)
         {
            if(_loc2_.§`$5§ != null)
            {
               if(_loc2_.§`$5§.indexOf(param1) != -1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public static function §,!c§(param1:String) : §<K§
      {
         var _loc2_:§<K§ = null;
         for each(_loc2_ in §8"z§)
         {
            if(_loc2_.§1#7§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §&#;§(param1:String) : §<K§
      {
         var _loc2_:§<K§ = null;
         for each(_loc2_ in §]"-§)
         {
            if(_loc2_.§1#7§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
