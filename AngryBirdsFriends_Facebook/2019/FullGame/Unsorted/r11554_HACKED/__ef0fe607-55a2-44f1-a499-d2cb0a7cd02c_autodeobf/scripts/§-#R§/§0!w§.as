package §-#R§
{
   public class §0!w§
   {
      
      public static const §3#0§:String = "PowerupBundle";
      
      public static const §3#D§:§4"p§ = new §4"p§("BirdFood","Power Potion","Button_PowerUp1","POWERUP1",["BirdFoodSubscriptionTournament"],"Supersize your bird! Power Potion turns any bird into a pig-popping giant!","Supersize your birds! Infinite Power Potion for this week\'s tournament.");
      
      public static const § #;§:§4"p§ = new §4"p§("ExtraSpeed","King Sling","Button_PowerUp2","POWERUP2",["ExtraSpeedSubscriptionTournament"],"Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!","Hail to the sling! Infinite King Sling for this week\'s tournament.");
      
      public static const §,"w§:§4"p§ = new §4"p§("LaserSight","Sling Scope","Button_PowerUp3","POWERUP3",["LaserSightSubscriptionTournament"],"Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!","Aim to please! Infinite Sling Scope for this week\'s tournament.");
      
      public static const §%#p§:§4"p§ = new §4"p§("Earthquake","Birdquake","Button_PowerUp4","POWERUP4",["EarthquakeSubscriptionTournament"],"Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!","Rattle the battle! Infinite Birdquake for this week\'s tournament.",false);
      
      public static const §<!y§:§4"p§ = new §4"p§("Mushroom","Mushbloom","Button_PowerUp5","POWERUP5",null,"Create a mighty bloom of mushrooms beneath the pigs and topple their towers! Only useable in the Pig Tales levels.");
      
      public static const §8$B§:§4"p§ = new §4"p§("TNTDrop","Tnt Drop","Button_PowerUp6","POWERUP6",["TNTDropSubscriptionDay","TNTDropSubscriptionTournament"]);
      
      public static const §9#%§:§4"p§ = new §4"p§("ExchangedItem","Pumpkin Drop","Button_PowerUp7","POWERUP7",null);
      
      public static const §<L§:§4"p§ = new §4"p§("BoomBox","Boombox","Button_PowerUp8","POWERUP8",null,"Have a blast and blow up the pigs with the Boombox power-up.","",false);
      
      public static const §'!z§:§4"p§ = new §4"p§("MightyEagle","Mighty Eagle","Button_PowerUpMightyEagle","POWERUP_MIGHTY_EAGLE",null,"Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.",false);
      
      public static const §2$?§:§4"p§ = new §4"p§("ExtraBird","Wingman","Button_PowerUpWingman","POWERUP_WINGMAN",["ExtraBirdSubscriptionDay","ExtraBirdSubscriptionTournament"],"Call the Wingman to demolish your enemies and impress your friends.","Call the Wingman! Infinite Wingman for this week\'s tournament.",false);
      
      public static const sWeek2Bundle:§4"p§ = new §4"p§("Xmas2013W2","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const sWeek3Bundle:§4"p§ = new §4"p§("Xmas2013W3","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const sWeek4Bundle:§4"p§ = new §4"p§("Xmas2013W4","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const §1J§:§4"p§ = new §4"p§("PowerupBundle","Power-Up Pack",null,null,null,"Each pack contains a Wingman, Power Potion, Sling Scope, King Sling, Birdquake and Boombox making it the perfect solution to all your piggy problems.","Each pack contains a Wingman, Power Potion, Sling Scope, King Sling, Birdquake and Boombox making it the perfect solution to all your piggy problems.",false);
      
      private static const §-!%§:Array = [sWeek2Bundle,sWeek3Bundle,sWeek4Bundle];
      
      public static const §?#D§:Array = [§2$?§.§]'§,§'!z§.§]'§];
      
      public static const §+#I§:Array = [§3#D§,§ #;§,§<L§,§%#p§,§8$B§,§9#%§,§'!z§,§2$?§,§<!y§,§,"w§];
      
      public static const § "!§:Array = [§3#D§,§ #;§,§,"w§,§%#p§,§<L§,§2$?§];
      
      public static const §@"B§:Array = [§3#D§,§ #;§,§,"w§,§%#p§,§'!z§,§<L§,§2$?§];
      
      public static const §<,§:Array = [§3#D§,§ #;§,§,"w§,§%#p§,§<!y§,§'!z§,§<L§,§2$?§];
       
      
      public function §0!w§()
      {
         super();
      }
      
      public static function get §'#v§() : Array
      {
         return §+#I§.concat();
      }
      
      public static function §4!-§(param1:String) : §4"p§
      {
         var _loc2_:§4"p§ = null;
         for each(_loc2_ in §+#I§)
         {
            if(_loc2_.eventName == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function § _§(param1:String) : §4"p§
      {
         var _loc2_:§4"p§ = null;
         for each(_loc2_ in §+#I§)
         {
            if(_loc2_.§=#o§ != null)
            {
               if(_loc2_.§=#o§.indexOf(param1) != -1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public static function §7$§(param1:String) : §4"p§
      {
         var _loc2_:§4"p§ = null;
         for each(_loc2_ in §+#I§)
         {
            if(_loc2_.§]'§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §5#U§(param1:String) : §4"p§
      {
         var _loc2_:§4"p§ = null;
         for each(_loc2_ in §-!%§)
         {
            if(_loc2_.§]'§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
