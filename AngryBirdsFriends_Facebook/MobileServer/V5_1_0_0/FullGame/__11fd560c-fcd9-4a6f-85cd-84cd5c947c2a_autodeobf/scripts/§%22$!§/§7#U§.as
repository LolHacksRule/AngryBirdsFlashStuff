package §"$!§
{
   import flash.events.Event;
   
   public class §7#U§ extends Event
   {
      
      public static const §^G§:String = "LeagueCurrentStandingsLoaded";
      
      public static const §7"!§:String = "UnconcludedLeagueLoaded";
      
      public static const §#!b§:String = "UnconcludedLeagueUpdated";
      
      public static const § !y§:String = "LeagueRewardClaimed";
      
      public static const §9u§:String = "AllPreviousResultLoaded";
      
      public static const §[l§:String = "LeagueProfileLoaded";
      
      public static const §,!e§:String = "AllUnconcludedLoaded";
      
      public static const §^i§:String = "AllRewardsClaimed";
      
      public static const §5$+§:String = "PlayerProfileDataUpdated";
      
      public static const §,t§:String = "ResetScoreDataLoadingCompleted";
      
      public static const §`$4§:String = "AllDataLoaded";
       
      
      private var §["[§:Object;
      
      public function §7#U§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§["[§ = param2;
      }
      
      public function get data() : Object
      {
         return this.§["[§;
      }
   }
}
