package §9T§
{
   public class § "T§
   {
      
      public static const §]",§:String = "PowerupBundle";
      
      public static const §&!C§:§!#;§ = new §!#;§("BirdFood","Power Potion","Button_PowerUp1","POWERUP1",["BirdFoodSubscriptionTournament"],"Supersize your bird! Power Potion turns any bird into a pig-popping giant!","Supersize your birds! Infinite Power Potion for this week\'s tournament.");
      
      public static const §=#x§:§!#;§ = new §!#;§("ExtraSpeed","King Sling","Button_PowerUp2","POWERUP2",["ExtraSpeedSubscriptionTournament"],"Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!","Hail to the sling! Infinite King Sling for this week\'s tournament.");
      
      public static const §4@§:§!#;§ = new §!#;§("LaserSight","Sling Scope","Button_PowerUp3","POWERUP3",["LaserSightSubscriptionTournament"],"Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!","Aim to please! Infinite Sling Scope for this week\'s tournament.");
      
      public static const §8"8§:§!#;§ = new §!#;§("Earthquake","Birdquake","Button_PowerUp4","POWERUP4",["EarthquakeSubscriptionTournament"],"Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!","Rattle the battle! Infinite Birdquake for this week\'s tournament.",false);
      
      public static const §=$%§:§!#;§ = new §!#;§("Mushroom","Mushbloom","Button_PowerUp5","POWERUP5",null,"Create a mighty bloom of mushrooms beneath the pigs and topple their towers! Only useable in the Pig Tales levels.");
      
      public static const §,",§:§!#;§ = new §!#;§("TNTDrop","Tnt Drop","Button_PowerUp6","POWERUP6",["TNTDropSubscriptionDay","TNTDropSubscriptionTournament"]);
      
      public static const §'!+§:§!#;§ = new §!#;§("ExchangedItem","Pumpkin Drop","Button_PowerUp7","POWERUP7",null);
      
      public static const §#"9§:§!#;§ = new §!#;§("BoomBox","Boombox","Button_PowerUp8","POWERUP8",null,"Have a blast and blow up the pigs with the Boombox power-up.","",false);
      
      public static const §="E§:§!#;§ = new §!#;§("MightyEagle","Mighty Eagle","Button_PowerUpMightyEagle","POWERUP_MIGHTY_EAGLE",null,"Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.",false);
      
      public static const §7z§:§!#;§ = new §!#;§("ExtraBird","Wingman","Button_PowerUpWingman","POWERUP_WINGMAN",["ExtraBirdSubscriptionDay","ExtraBirdSubscriptionTournament"],"Call the Wingman to demolish your enemies and impress your friends.","Call the Wingman! Infinite Wingman for this week\'s tournament.",false);
      
      public static const sWeek2Bundle:§!#;§ = new §!#;§("Xmas2013W2","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const sWeek3Bundle:§!#;§ = new §!#;§("Xmas2013W3","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const sWeek4Bundle:§!#;§ = new §!#;§("Xmas2013W4","The Tournament Bundle",null,null,null,"Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.","Enjoy infinite power-ups for this week\'s tournament. Includes Wingman and every power-up.",false);
      
      public static const §%!W§:§!#;§ = new §!#;§("PowerupBundle","Power-Up Pack",null,null,null,"Each pack contains a Wingman, Power Potion, Sling Scope, King Sling, Birdquake and Boombox making it the perfect solution to all your piggy problems.","Each pack contains a Wingman, Power Potion, Sling Scope, King Sling, Birdquake and Boombox making it the perfect solution to all your piggy problems.",false);
      
      private static const §["p§:Array = [sWeek2Bundle,sWeek3Bundle,sWeek4Bundle];
      
      public static const §'#U§:Array = [§7z§.§8t§,§="E§.§8t§];
      
      public static const §<!B§:Array = [§&!C§,§=#x§,§#"9§,§8"8§,§,",§,§'!+§,§="E§,§7z§,§=$%§,§4@§];
      
      public static const §"!X§:Array = [§&!C§,§=#x§,§4@§,§8"8§,§#"9§,§7z§];
      
      public static const §&$9§:Array = [§&!C§,§=#x§,§4@§,§8"8§,§="E§,§#"9§,§7z§];
      
      public static const §3^§:Array = [§&!C§,§=#x§,§4@§,§8"8§,§=$%§,§="E§,§#"9§,§7z§];
       
      
      public function § "T§()
      {
         super();
      }
      
      public static function get §"!K§() : Array
      {
         return §<!B§.concat();
      }
      
      public static function §"#V§(param1:String) : §!#;§
      {
         var _loc2_:§!#;§ = null;
         for each(_loc2_ in §<!B§)
         {
            if(_loc2_.eventName == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function § #m§(param1:String) : §!#;§
      {
         var _loc2_:§!#;§ = null;
         for each(_loc2_ in §<!B§)
         {
            if(_loc2_.§<!x§ != null)
            {
               if(_loc2_.§<!x§.indexOf(param1) != -1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public static function §7#?§(param1:String) : §!#;§
      {
         var _loc2_:§!#;§ = null;
         for each(_loc2_ in §<!B§)
         {
            if(_loc2_.§8t§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §]#%§(param1:String) : §!#;§
      {
         var _loc2_:§!#;§ = null;
         for each(_loc2_ in §["p§)
         {
            if(_loc2_.§8t§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
