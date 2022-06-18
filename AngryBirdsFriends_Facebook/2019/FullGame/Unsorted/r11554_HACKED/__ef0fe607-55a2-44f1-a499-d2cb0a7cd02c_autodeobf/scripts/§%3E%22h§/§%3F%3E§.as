package §>"h§
{
   import flash.events.Event;
   
   public class §?>§ extends Event
   {
      
      public static const § "M§:String = "LeagueCurrentStandingsLoaded";
      
      public static const §9"H§:String = "UnconcludedLeagueLoaded";
      
      public static const §["X§:String = "UnconcludedLeagueUpdated";
      
      public static const §^W§:String = "LeagueRewardClaimed";
      
      public static const §!"P§:String = "AllPreviousResultLoaded";
      
      public static const §7!D§:String = "LeagueProfileLoaded";
      
      public static const §"#&§:String = "AllUnconcludedLoaded";
      
      public static const § ![§:String = "AllRewardsClaimed";
      
      public static const §[^§:String = "PlayerProfileDataUpdated";
      
      public static const §;!I§:String = "ResetScoreDataLoadingCompleted";
      
      public static const §]#s§:String = "AllDataLoaded";
       
      
      private var §"""§:Object;
      
      public function §?>§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§"""§ = param2;
      }
      
      public function get data() : Object
      {
         return this.§"""§;
      }
   }
}
