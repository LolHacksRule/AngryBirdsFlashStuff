package §;P§
{
   public class §super§
   {
      
      public static const §5"b§:String = "PowerupBundle";
      
      public static const §@"B§:§-#b§ = new §-#b§("BirdFood","Power Potion","Button_PowerUp1","POWERUP1",["BirdFoodSubscriptionTournament"],"Supersize your bird! Power Potion turns any bird into a pig-popping giant!","Supersize your birds! Infinite Power Potion for this week\'s tournament.");
      
      public static const §&"l§:§-#b§ = new §-#b§("ExtraSpeed","King Sling","Button_PowerUp2","POWERUP2",["ExtraSpeedSubscriptionTournament"],"Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!","Hail to the sling! Infinite King Sling for this week\'s tournament.");
      
      public static const §!!y§:§-#b§ = new §-#b§("LaserSight","Sling Scope","Button_PowerUp3","POWERUP3",["LaserSightSubscriptionTournament"],"Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!","Aim to please! Infinite Sling Scope for this week\'s tournament.");
      
      public static const §+!d§:§-#b§ = new §-#b§("Earthquake","Birdquake","Button_PowerUp4","POWERUP4",["EarthquakeSubscriptionTournament"],"Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!","Rattle the battle! Infinite Birdquake for this week\'s tournament.",false);
      
      public static const §9!T§:§-#b§ = new §-#b§("Mushroom","Mushbloom","Button_PowerUp5","POWERUP5",null,"Create a mighty bloom of mushrooms beneath the pigs and topple their towers! Only useable in the Pig Tales levels.");
      
      public static const §%#[§:§-#b§ = new §-#b§("TNTDrop","Tnt Drop","Button_PowerUp6","POWERUP6",["TNTDropSubscriptionDay","TNTDropSubscriptionTournament"]);
      
      public static const §^!M§:§-#b§ = new §-#b§("ExchangedItem","Pumpkin Drop","Button_PowerUp7","POWERUP7",null);
      
      public static const §["0§:§-#b§ = new §-#b§("MightyEagle","Mighty Eagle","Button_PowerUpMightyEagle","POWERUP_MIGHTY_EAGLE",null,"Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.",false);
      
      public static const §#"[§:§-#b§ = new §-#b§("ExtraBird","Wingman","Button_PowerUpWingman","POWERUP_WINGMAN",["ExtraBirdSubscriptionDay","ExtraBirdSubscriptionTournament"],"Call the Wingman to demolish your enemies and impress your friends.","Call the Wingman! Infinite Wingman for this week\'s tournament.",false);
      
      public static const sWeek2Bundle:§-#b§ = new §-#b§("Xmas2013W2","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const sWeek3Bundle:§-#b§ = new §-#b§("Xmas2013W3","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const sWeek4Bundle:§-#b§ = new §-#b§("Xmas2013W4","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const §4T§:§-#b§ = new §-#b§("PowerupBundle","Power-Up Pack",null,null,null,"Each pack contains a Wingman, Power Potion, Sling Scope, King Sling and Birdquake making it the perfect solution to all your piggy problems.","Each pack contains a Wingman, Power Potion, Sling Scope, King Sling and Birdquake making it the perfect solution to all your piggy problems.",false);
      
      private static const §?",§:Array = [sWeek2Bundle,sWeek3Bundle,sWeek4Bundle];
      
      public static const §9!h§:Array = [§#"[§.§?"9§,§["0§.§?"9§];
      
      public static const §`t§:Array = [§@"B§,§&"l§,§!!y§,§+!d§,§%#[§,§^!M§,§["0§,§#"[§,§9!T§];
      
      public static const §;N§:Array = [§@"B§,§&"l§,§!!y§,§+!d§,§#"[§];
      
      public static const §>!X§:Array = [§@"B§,§&"l§,§!!y§,§+!d§,§["0§,§#"[§];
      
      public static const §`j§:Array = [§@"B§,§&"l§,§!!y§,§+!d§,§9!T§,§["0§,§#"[§];
       
      
      public function §super§()
      {
         super();
      }
      
      public static function get §[#>§() : Array
      {
         return §`t§.concat();
      }
      
      public static function §1"Q§(param1:String) : §-#b§
      {
         var _loc2_:§-#b§ = null;
         for each(_loc2_ in §`t§)
         {
            if(_loc2_.eventName == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §0!h§(param1:String) : §-#b§
      {
         var _loc2_:§-#b§ = null;
         for each(_loc2_ in §`t§)
         {
            if(_loc2_.§5![§ != null)
            {
               if(_loc2_.§5![§.indexOf(param1) != -1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public static function §="=§(param1:String) : §-#b§
      {
         var _loc2_:§-#b§ = null;
         for each(_loc2_ in §`t§)
         {
            if(_loc2_.§?"9§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §="u§(param1:String) : §-#b§
      {
         var _loc2_:§-#b§ = null;
         for each(_loc2_ in §?",§)
         {
            if(_loc2_.§?"9§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
