package §"",§
{
   import flash.events.Event;
   
   public class §4#Q§ extends Event
   {
      
      public static const §#"Z§:String = "LeagueCurrentStandingsLoaded";
      
      public static const §2I§:String = "UnconcludedLeagueLoaded";
      
      public static const §+"R§:String = "UnconcludedLeagueUpdated";
      
      public static const §]"8§:String = "LeagueRewardClaimed";
      
      public static const §]#T§:String = "AllPreviousResultLoaded";
      
      public static const §+3§:String = "LeagueProfileLoaded";
      
      public static const §"R§:String = "AllUnconcludedLoaded";
      
      public static const §"#0§:String = "AllRewardsClaimed";
      
      public static const §>#n§:String = "PlayerProfileDataUpdated";
      
      public static const §,2§:String = "ResetScoreDataLoadingCompleted";
      
      public static const §4f§:String = "AllDataLoaded";
       
      
      private var §8#f§:Object;
      
      public function §4#Q§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§8#f§ = param2;
      }
      
      public function get data() : Object
      {
         return this.§8#f§;
      }
   }
}
