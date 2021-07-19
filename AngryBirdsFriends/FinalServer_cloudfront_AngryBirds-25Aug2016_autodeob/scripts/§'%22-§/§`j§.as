package §'"-§
{
   public class §`j§
   {
      
      public static const §8!3§:String = "PowerupBundle";
      
      public static const §6#z§:§'#3§ = new §'#3§("BirdFood","Power Potion","Button_PowerUp1","PowerUpCount1","POWERUP1",["BirdFoodSubscriptionTournament"],"Supersize your bird! Power Potion turns any bird into a pig-popping giant!","Supersize your birds! Infinite Power Potion for this week\'s tournament.");
      
      public static const §-"f§:§'#3§ = new §'#3§("ExtraSpeed","King Sling","Button_PowerUp2","PowerUpCount2","POWERUP2",["ExtraSpeedSubscriptionTournament"],"Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!","Hail to the sling! Infinite King Sling for this week\'s tournament.");
      
      public static const §-"5§:§'#3§ = new §'#3§("LaserSight","Sling Scope","Button_PowerUp3","PowerUpCount3","POWERUP3",["LaserSightSubscriptionTournament"],"Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!","Aim to please! Infinite Sling Scope for this week\'s tournament.");
      
      public static const §5"j§:§'#3§ = new §'#3§("Earthquake","Birdquake","Button_PowerUp4","PowerUpCount4","POWERUP4",["EarthquakeSubscriptionTournament"],"Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!","Rattle the battle! Infinite Birdquake for this week\'s tournament.",false);
      
      public static const §?O§:§'#3§ = new §'#3§("TNTDrop","Tnt Drop","Button_PowerUp5","PowerUpCount5","POWERUP5",["TNTDropSubscriptionDay","TNTDropSubscriptionTournament"]);
      
      public static const §@!V§:§'#3§ = new §'#3§("MightyEagle","Mighty Eagle","Button_MightyEagle","PowerUpCountME","MIGHTY_EAGLE",null,"Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.",false);
      
      public static const §="-§:§'#3§ = new §'#3§("ExtraBird","Wingman","Button_Wingman","PowerUpCountWM","POWERUP_WINGMAN",["ExtraBirdSubscriptionDay","ExtraBirdSubscriptionTournament"],"Call the Wingman to demolish your enemies and impress your friends.","Call the Wingman! Infinite Wingman for this week\'s tournament.",false);
      
      public static const §+"4§:§'#3§ = new §'#3§("Mushroom","Mushbloom","Button_PowerUp6","PowerUpCount6","POWERUP6",null,"Create a mighty bloom of mushrooms beneath the pigs and topple their towers! Only useable in the Pig Tales levels.");
      
      public static const sWeek2Bundle:§'#3§ = new §'#3§("Xmas2013W2","The Tournament Bundle",null,null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const sWeek3Bundle:§'#3§ = new §'#3§("Xmas2013W3","The Tournament Bundle",null,null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const sWeek4Bundle:§'#3§ = new §'#3§("Xmas2013W4","The Tournament Bundle",null,null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const §+#4§:§'#3§ = new §'#3§("PowerupBundle","Power-Up Pack",null,null,null,null,"Each pack contains one Power Potion, Sling Scope, King Sling and Birdquake making it the perfect solution to all your piggy problems.","Each pack contains one Power Potion, Sling Scope, King Sling and Birdquake making it the perfect solution to all your piggy problems.",false);
      
      public static const §2"F§:Array = [§6#z§,§-"f§,§-"5§,§5"j§,§?O§,§@!V§,§="-§,§+"4§];
      
      private static const §2"`§:Array = [sWeek2Bundle,sWeek3Bundle,sWeek4Bundle];
      
      public static const §3"I§:Array = [§="-§.§"!E§,§@!V§.§"!E§];
       
      
      public function §`j§()
      {
         super();
      }
      
      public static function get §1"f§() : Array
      {
         return §2"F§.concat();
      }
      
      public static function §'"0§(param1:String) : §'#3§
      {
         var _loc2_:§'#3§ = null;
         for each(_loc2_ in §2"F§)
         {
            if(_loc2_.eventName == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §8"&§(param1:String) : §'#3§
      {
         var _loc2_:§'#3§ = null;
         for each(_loc2_ in §2"F§)
         {
            if(_loc2_.§4!W§ != null)
            {
               if(_loc2_.§4!W§.indexOf(param1) != -1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public static function §6p§(param1:String) : §'#3§
      {
         var _loc2_:§'#3§ = null;
         for each(_loc2_ in §2"F§)
         {
            if(_loc2_.§"!E§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §8"F§(param1:String) : §'#3§
      {
         var _loc2_:§'#3§ = null;
         for each(_loc2_ in §2"`§)
         {
            if(_loc2_.§"!E§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
