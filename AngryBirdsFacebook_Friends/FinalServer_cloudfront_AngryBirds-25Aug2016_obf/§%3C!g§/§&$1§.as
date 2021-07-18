package §<!g§
{
   import flash.events.Event;
   
   public class §&$1§ extends Event
   {
      
      public static const §]!n§:String = "LeagueCurrentStandingsLoaded";
      
      public static const §##z§:String = "UnconcludedLeagueLoaded";
      
      public static const §6!Q§:String = "UnconcludedLeagueUpdated";
      
      public static const §7s§:String = "LeagueRewardClaimed";
      
      public static const §4!9§:String = "AllPreviousResultLoaded";
      
      public static const §;"H§:String = "LeagueProfileLoaded";
      
      public static const §^"2§:String = "AllUnconcludedLoaded";
      
      public static const §>#t§:String = "AllRewardsClaimed";
      
      public static const §@K§:String = "PlayerProfileDataUpdated";
      
      public static const §!"c§:String = "ResetScoreDataLoadingCompleted";
      
      public static const §=e§:String = "AllDataLoaded";
       
      
      private var §+!&§:Object;
      
      public function §&$1§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§+!&§ = param2;
      }
      
      public function get data() : Object
      {
         return this.§+!&§;
      }
   }
}
