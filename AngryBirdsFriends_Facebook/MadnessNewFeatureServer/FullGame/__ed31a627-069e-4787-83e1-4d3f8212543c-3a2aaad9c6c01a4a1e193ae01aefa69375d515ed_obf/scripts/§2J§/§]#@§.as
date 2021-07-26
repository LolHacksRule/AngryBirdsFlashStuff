package §2J§
{
   import flash.events.Event;
   
   public class §]#@§ extends Event
   {
      
      public static const §+!_§:String = "TournamentReload";
      
      public static var §,Q§:String = "TournamentExpired";
      
      public static var §^#y§:String = "CurrentTournamentInfoUpdated";
      
      public static var §&?§:String = "CurrentTournamentInfoLoaded";
      
      public static var §^!q§:String = "CurrentTournamentInfoInitialized";
      
      public static var §["X§:String = "CurrentTournamentAssetsLoaded";
      
      public static var §,!N§:String = "TournamentLoaded";
      
      public static var §]<§:String = "OverlappingTournamentsInfoLoaded";
      
      public static var §^$0§:String = "OverlappingTournamentsDisabled";
      
      public static var §6$7§:String = "OverlappingTournamentsNotFound";
      
      public static var §#t§:String = "UnconcludedTournamentLoaded";
      
      public static var §3"0§:String = "UnconcludedTournamentUpdated";
      
      public static var § ">§:String = "PreviousTournamentResultLoaded";
      
      public static var §3!`§:String = "PreviousTournamentResultUpdated";
      
      public static var §4#p§:String = "CurrentTournamentLevelScoresLoaded";
      
      public static var §,X§:String = "CurrentTournamentStandingsLoaded";
      
      public static var §%!+§:String = "CurrentTournamentRewardClaimed";
      
      public static const §1!^§:String = "AllMainMenuDataLoaded";
       
      
      private var §8#f§:Object;
      
      public function §]#@§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§8#f§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §]#@§(type,this.data,bubbles,cancelable);
      }
      
      public function get data() : Object
      {
         return this.§8#f§;
      }
   }
}
