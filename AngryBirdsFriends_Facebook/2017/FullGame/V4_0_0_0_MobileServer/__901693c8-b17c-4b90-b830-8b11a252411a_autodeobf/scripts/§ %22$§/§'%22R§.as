package § "$§
{
   import flash.events.Event;
   
   public class §'"R§ extends Event
   {
      
      public static const §>k§:String = "TournamentReload";
      
      public static var § !A§:String = "TournamentExpired";
      
      public static var §'k§:String = "CurrentTournamentInfoUpdated";
      
      public static var §",§:String = "CurrentTournamentInfoLoaded";
      
      public static var §6#+§:String = "CurrentTournamentInfoInitialized";
      
      public static var §7$9§:String = "CurrentTournamentAssetsLoaded";
      
      public static var §3!C§:String = "UnconcludedTournamentLoaded";
      
      public static var §`$6§:String = "UnconcludedTournamentUpdated";
      
      public static var §<!L§:String = "PreviousTournamentResultLoaded";
      
      public static var §%!^§:String = "PreviousTournamentResultUpdated";
      
      public static var §4&§:String = "CurrentTournamentLevelScoresLoaded";
      
      public static var §7#O§:String = "CurrentTournamentStandingsLoaded";
      
      public static var §<!7§:String = "CurrentTournamentRewardClaimed";
      
      public static const §,!Z§:String = "AllDataLoaded";
       
      
      private var §]!$§:Object;
      
      public function §'"R§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§]!$§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §'"R§(type,this.data,bubbles,cancelable);
      }
      
      public function get data() : Object
      {
         return this.§]!$§;
      }
   }
}
