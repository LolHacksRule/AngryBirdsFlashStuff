package §<"I§
{
   public class §<$B§
   {
      
      public static const §3M§:String = "PowerupBundle";
      
      public static const §+"4§:§1!^§ = new §1!^§("BirdFood","Power Potion","Button_PowerUp1","POWERUP1",["BirdFoodSubscriptionTournament"],"Supersize your bird! Power Potion turns any bird into a pig-popping giant!","Supersize your birds! Infinite Power Potion for this week\'s tournament.");
      
      public static const §<$§:§1!^§ = new §1!^§("ExtraSpeed","King Sling","Button_PowerUp2","POWERUP2",["ExtraSpeedSubscriptionTournament"],"Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!","Hail to the sling! Infinite King Sling for this week\'s tournament.");
      
      public static const § !n§:§1!^§ = new §1!^§("LaserSight","Sling Scope","Button_PowerUp3","POWERUP3",["LaserSightSubscriptionTournament"],"Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!","Aim to please! Infinite Sling Scope for this week\'s tournament.");
      
      public static const §5#J§:§1!^§ = new §1!^§("Earthquake","Birdquake","Button_PowerUp4","POWERUP4",["EarthquakeSubscriptionTournament"],"Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!","Rattle the battle! Infinite Birdquake for this week\'s tournament.",false);
      
      public static const §!"C§:§1!^§ = new §1!^§("Mushroom","Mushbloom","Button_PowerUp5","POWERUP5",null,"Create a mighty bloom of mushrooms beneath the pigs and topple their towers! Only useable in the Pig Tales levels.","",true,false);
      
      public static const §^!n§:§1!^§ = new §1!^§("TNTDrop","Tnt Drop","Button_PowerUp6","POWERUP6",["TNTDropSubscriptionDay","TNTDropSubscriptionTournament"]);
      
      public static const §,"S§:§1!^§ = new §1!^§("ExchangedItem","Pumpkin Drop","Button_PowerUp7","POWERUP7",null);
      
      public static const §[D§:§1!^§ = new §1!^§("BoomBox","Boombox","Button_PowerUp8","POWERUP8",null,"Have a blast and blow up the pigs with the Boombox power-up.","",false);
      
      public static const §`"K§:§1!^§ = new §1!^§("MightyEagle","Mighty Eagle","Button_PowerUpMightyEagle","POWERUP_MIGHTY_EAGLE",null,"Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.",false,false);
      
      public static const §0"s§:§1!^§ = new §1!^§("ExtraBird","Wingman","Button_PowerUpWingman","POWERUP_WINGMAN",["ExtraBirdSubscriptionDay","ExtraBirdSubscriptionTournament"],"Call the Wingman to demolish your enemies and impress your friends.","Call the Wingman! Infinite Wingman for this week\'s tournament.",false);
      
      public static const sWeek2Bundle:§1!^§ = new §1!^§("Xmas2013W2","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const sWeek3Bundle:§1!^§ = new §1!^§("Xmas2013W3","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const sWeek4Bundle:§1!^§ = new §1!^§("Xmas2013W4","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const §@!&§:§1!^§ = new §1!^§("PowerupBundle","Power-Up Pack",null,null,null,"Each pack contains a Wingman, Power Potion, Sling Scope, King Sling, Birdquake and Boombox making it the perfect solution to all your piggy problems.","Each pack contains a Wingman, Power Potion, Sling Scope, King Sling, Birdquake and Boombox making it the perfect solution to all your piggy problems.",false);
      
      private static const §;$0§:Array = [sWeek2Bundle,sWeek3Bundle,sWeek4Bundle];
      
      public static const §,#j§:Array = [§0"s§.§=#@§,§`"K§.§=#@§];
      
      public static const §7#p§:Array = [§+"4§,§<$§,§[D§,§5#J§,§^!n§,§,"S§,§`"K§,§0"s§,§!"C§,§ !n§];
      
      public static const §]!n§:Array = [§+"4§,§<$§,§ !n§,§5#J§,§[D§,§0"s§];
      
      public static const §7o§:Array = [§+"4§,§<$§,§ !n§,§5#J§,§`"K§,§[D§,§0"s§];
      
      public static const §-8§:Array = [§+"4§,§<$§,§ !n§,§5#J§,§!"C§,§`"K§,§[D§,§0"s§];
       
      
      public function §<$B§()
      {
         super();
      }
      
      public static function get §6#P§() : Array
      {
         return §7#p§.concat();
      }
      
      public static function §2"i§(param1:String) : §1!^§
      {
         var _loc2_:§1!^§ = null;
         for each(_loc2_ in §7#p§)
         {
            if(_loc2_.eventName == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §3#&§(param1:String) : §1!^§
      {
         var _loc2_:§1!^§ = null;
         for each(_loc2_ in §7#p§)
         {
            if(_loc2_.§const§ != null)
            {
               if(_loc2_.§const§.indexOf(param1) != -1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public static function §-"N§(param1:String) : §1!^§
      {
         var _loc2_:§1!^§ = null;
         for each(_loc2_ in §7#p§)
         {
            if(_loc2_.§=#@§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §%!E§(param1:String) : §1!^§
      {
         var _loc2_:§1!^§ = null;
         for each(_loc2_ in §;$0§)
         {
            if(_loc2_.§=#@§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
