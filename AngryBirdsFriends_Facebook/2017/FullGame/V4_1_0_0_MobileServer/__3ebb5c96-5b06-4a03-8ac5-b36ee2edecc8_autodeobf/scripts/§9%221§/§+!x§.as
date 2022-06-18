package §9"1§
{
   import flash.events.Event;
   
   public class §+!x§ extends Event
   {
      
      public static const §#!r§:String = "LeagueCurrentStandingsLoaded";
      
      public static const §+o§:String = "UnconcludedLeagueLoaded";
      
      public static const § !Q§:String = "UnconcludedLeagueUpdated";
      
      public static const §3$"§:String = "LeagueRewardClaimed";
      
      public static const §""k§:String = "AllPreviousResultLoaded";
      
      public static const §;a§:String = "LeagueProfileLoaded";
      
      public static const §^#u§:String = "AllUnconcludedLoaded";
      
      public static const §0!m§:String = "AllRewardsClaimed";
      
      public static const §<!J§:String = "PlayerProfileDataUpdated";
      
      public static const §'!=§:String = "ResetScoreDataLoadingCompleted";
      
      public static const §,!Z§:String = "AllDataLoaded";
       
      
      private var §]!$§:Object;
      
      public function §+!x§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§]!$§ = param2;
      }
      
      public function get data() : Object
      {
         return this.§]!$§;
      }
   }
}
