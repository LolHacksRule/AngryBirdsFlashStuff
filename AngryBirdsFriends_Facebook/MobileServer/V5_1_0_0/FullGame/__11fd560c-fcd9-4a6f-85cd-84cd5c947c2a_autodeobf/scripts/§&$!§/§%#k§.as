package §&$!§
{
   public class §%#k§
   {
      
      public static const §6#%§:String = "PowerupBundle";
      
      public static const §""z§:§##a§ = new §##a§("BirdFood","Power Potion","Button_PowerUp1","POWERUP1",["BirdFoodSubscriptionTournament"],"Supersize your bird! Power Potion turns any bird into a pig-popping giant!","Supersize your birds! Infinite Power Potion for this week\'s tournament.");
      
      public static const §'"!§:§##a§ = new §##a§("ExtraSpeed","King Sling","Button_PowerUp2","POWERUP2",["ExtraSpeedSubscriptionTournament"],"Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!","Hail to the sling! Infinite King Sling for this week\'s tournament.");
      
      public static const §0"W§:§##a§ = new §##a§("LaserSight","Sling Scope","Button_PowerUp3","POWERUP3",["LaserSightSubscriptionTournament"],"Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!","Aim to please! Infinite Sling Scope for this week\'s tournament.");
      
      public static const §6`§:§##a§ = new §##a§("Earthquake","Birdquake","Button_PowerUp4","POWERUP4",["EarthquakeSubscriptionTournament"],"Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!","Rattle the battle! Infinite Birdquake for this week\'s tournament.",false);
      
      public static const §@#l§:§##a§ = new §##a§("Mushroom","Mushbloom","Button_PowerUp5","POWERUP5",null,"Create a mighty bloom of mushrooms beneath the pigs and topple their towers! Only useable in the Pig Tales levels.");
      
      public static const §>#Z§:§##a§ = new §##a§("TNTDrop","Tnt Drop","Button_PowerUp6","POWERUP6",["TNTDropSubscriptionDay","TNTDropSubscriptionTournament"]);
      
      public static const §[4§:§##a§ = new §##a§("ExchangedItem","Pumpkin Drop","Button_PowerUp7","POWERUP7",null);
      
      public static const §'!N§:§##a§ = new §##a§("BoomBox","Boombox","Button_PowerUp8","POWERUP8",null,"Have a blast and blow up the pigs with the Boombox power-up.","",false);
      
      public static const §]k§:§##a§ = new §##a§("MightyEagle","Mighty Eagle","Button_PowerUpMightyEagle","POWERUP_MIGHTY_EAGLE",null,"Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.",false);
      
      public static const §6"t§:§##a§ = new §##a§("ExtraBird","Wingman","Button_PowerUpWingman","POWERUP_WINGMAN",["ExtraBirdSubscriptionDay","ExtraBirdSubscriptionTournament"],"Call the Wingman to demolish your enemies and impress your friends.","Call the Wingman! Infinite Wingman for this week\'s tournament.",false);
      
      public static const sWeek2Bundle:§##a§ = new §##a§("Xmas2013W2","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const sWeek3Bundle:§##a§ = new §##a§("Xmas2013W3","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const sWeek4Bundle:§##a§ = new §##a§("Xmas2013W4","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const §[=§:§##a§ = new §##a§("PowerupBundle","Power-Up Pack",null,null,null,"Each pack contains a Wingman, Power Potion, Sling Scope, King Sling, Birdquake and Boombox making it the perfect solution to all your piggy problems.","Each pack contains a Wingman, Power Potion, Sling Scope, King Sling, Birdquake and Boombox making it the perfect solution to all your piggy problems.",false);
      
      private static const §1#F§:Array = [sWeek2Bundle,sWeek3Bundle,sWeek4Bundle];
      
      public static const §7"i§:Array = [§6"t§.§5"g§,§]k§.§5"g§];
      
      public static const §#"J§:Array = [§""z§,§'"!§,§'!N§,§6`§,§>#Z§,§[4§,§]k§,§6"t§,§@#l§,§0"W§];
      
      public static const §<"D§:Array = [§""z§,§'"!§,§0"W§,§6`§,§'!N§,§6"t§];
      
      public static const §8#;§:Array = [§""z§,§'"!§,§0"W§,§6`§,§]k§,§'!N§,§6"t§];
      
      public static const §'!9§:Array = [§""z§,§'"!§,§0"W§,§6`§,§@#l§,§]k§,§'!N§,§6"t§];
       
      
      public function §%#k§()
      {
         super();
      }
      
      public static function get §1"E§() : Array
      {
         return §#"J§.concat();
      }
      
      public static function §"#`§(param1:String) : §##a§
      {
         var _loc2_:§##a§ = null;
         for each(_loc2_ in §#"J§)
         {
            if(_loc2_.eventName == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §3U§(param1:String) : §##a§
      {
         var _loc2_:§##a§ = null;
         for each(_loc2_ in §#"J§)
         {
            if(_loc2_.§6!d§ != null)
            {
               if(_loc2_.§6!d§.indexOf(param1) != -1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public static function §62§(param1:String) : §##a§
      {
         var _loc2_:§##a§ = null;
         for each(_loc2_ in §#"J§)
         {
            if(_loc2_.§5"g§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §?#!§(param1:String) : §##a§
      {
         var _loc2_:§##a§ = null;
         for each(_loc2_ in §1#F§)
         {
            if(_loc2_.§5"g§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
