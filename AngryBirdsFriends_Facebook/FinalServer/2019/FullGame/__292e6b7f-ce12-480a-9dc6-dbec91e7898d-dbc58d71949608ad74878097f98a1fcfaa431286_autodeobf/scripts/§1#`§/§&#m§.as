package §1#`§
{
   import flash.events.Event;
   
   public class §&#m§ extends Event
   {
      
      public static const §?i§:String = "TournamentReload";
      
      public static var §%5§:String = "TournamentExpired";
      
      public static var §]"4§:String = "CurrentTournamentInfoUpdated";
      
      public static var §^#V§:String = "CurrentTournamentInfoLoaded";
      
      public static var §7#o§:String = "CurrentTournamentInfoInitialized";
      
      public static var §]"]§:String = "CurrentTournamentAssetsLoaded";
      
      public static var §&!I§:String = "TournamentLoaded";
      
      public static var §9G§:String = "OverlappingTournamentsInfoLoaded";
      
      public static var §,"t§:String = "OverlappingTournamentsDisabled";
      
      public static var §^"=§:String = "OverlappingTournamentsNotFound";
      
      public static var § #%§:String = "UnconcludedTournamentLoaded";
      
      public static var §@$+§:String = "UnconcludedTournamentUpdated";
      
      public static var §&#h§:String = "PreviousTournamentResultLoaded";
      
      public static var §-=§:String = "PreviousTournamentResultUpdated";
      
      public static var §%#i§:String = "CurrentTournamentLevelScoresLoaded";
      
      public static var §'"Z§:String = "CurrentTournamentStandingsLoaded";
      
      public static var §8#?§:String = "CurrentTournamentRewardClaimed";
      
      public static const §'"X§:String = "AllMainMenuDataLoaded";
       
      
      private var §1!,§:Object;
      
      public function §&#m§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§1!,§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §&#m§(type,this.data,bubbles,cancelable);
      }
      
      public function get data() : Object
      {
         return this.§1!,§;
      }
   }
}
