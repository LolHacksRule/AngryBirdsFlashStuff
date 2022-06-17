package §3!5§
{
   import flash.events.Event;
   
   public class §0#r§ extends Event
   {
      
      public static const §##P§:String = "TournamentReload";
      
      public static var §7v§:String = "TournamentExpired";
      
      public static var §5"z§:String = "CurrentTournamentInfoUpdated";
      
      public static var §,V§:String = "CurrentTournamentInfoLoaded";
      
      public static var §]"?§:String = "CurrentTournamentInfoInitialized";
      
      public static var §;![§:String = "CurrentTournamentAssetsLoaded";
      
      public static var §=!z§:String = "TournamentLoaded";
      
      public static var §,B§:String = "OverlappingTournamentsInfoLoaded";
      
      public static var §8"@§:String = "OverlappingTournamentsDisabled";
      
      public static var §7!m§:String = "OverlappingTournamentsNotFound";
      
      public static var §3#C§:String = "UnconcludedTournamentLoaded";
      
      public static var §'!+§:String = "UnconcludedTournamentUpdated";
      
      public static var §[#t§:String = "PreviousTournamentResultLoaded";
      
      public static var §9!M§:String = "PreviousTournamentResultUpdated";
      
      public static var §'$>§:String = "CurrentTournamentLevelScoresLoaded";
      
      public static var §]E§:String = "CurrentTournamentStandingsLoaded";
      
      public static var §@o§:String = "CurrentTournamentRewardClaimed";
      
      public static const § var§:String = "AllMainMenuDataLoaded";
       
      
      private var §"""§:Object;
      
      public function §0#r§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§"""§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §0#r§(type,this.data,bubbles,cancelable);
      }
      
      public function get data() : Object
      {
         return this.§"""§;
      }
   }
}
