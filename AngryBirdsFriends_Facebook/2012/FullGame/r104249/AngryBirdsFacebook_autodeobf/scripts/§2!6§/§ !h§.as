package §2!6§
{
   public class § !h§
   {
      
      public static const §+!<§:§?G§ = new §?G§("BirdFood","Super Seeds","Button_PowerUp1","PowerUpCount1","POWERUP1");
      
      public static const §]!^§:§?G§ = new §?G§("ExtraSpeed","King Sling","Button_PowerUp2","PowerUpCount2","POWERUP2");
      
      public static const §="'§:§?G§ = new §?G§("LaserSight","Sling Scope","Button_PowerUp3","PowerUpCount3","POWERUP3");
      
      public static const §@"<§:§?G§ = new §?G§("Earthquake","Birdquake","Button_PowerUp4","PowerUpCount4","POWERUP4",null,false);
      
      public static const §+6§:§?G§ = new §?G§("TNTDrop","Tnt Drop","Button_PowerUp5","PowerUpCount5","POWERUP5",["TNTDropSubscriptionDay","TNTDropSubscriptionTournament"]);
      
      public static const §]W§:§?G§ = new §?G§("MightyEagle","Mighty Eagle","Button_MightyEagle","PowerUpCountME","MIGHTY_EAGLE",null,false);
      
      public static const §36§:§?G§ = new §?G§("ExtraBird","Van Terrence","Button_ExtraBird","PowerUpCountVH","EXTRABIRD",["ExtraBirdSubscriptionDay","ExtraBirdSubscriptionTournament"],false);
      
      private static const §+!J§:Array = [§+!<§,§]!^§,§="'§,§@"<§,§+6§,§]W§,§36§];
       
      
      public function § !h§()
      {
         super();
      }
      
      public static function get §]e§() : Array
      {
         return §+!J§.concat();
      }
      
      public static function §;"6§(param1:String) : §?G§
      {
         var _loc2_:§?G§ = null;
         for each(_loc2_ in §+!J§)
         {
            if(_loc2_.§4W§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §+h§(param1:String) : §?G§
      {
         var _loc2_:§?G§ = null;
         for each(_loc2_ in §+!J§)
         {
            if(_loc2_.§5"<§ != null)
            {
               if(_loc2_.§5"<§.indexOf(param1) != -1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public static function § "8§(param1:String) : §?G§
      {
         var _loc2_:§?G§ = null;
         for each(_loc2_ in §+!J§)
         {
            if(_loc2_.§5"5§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
