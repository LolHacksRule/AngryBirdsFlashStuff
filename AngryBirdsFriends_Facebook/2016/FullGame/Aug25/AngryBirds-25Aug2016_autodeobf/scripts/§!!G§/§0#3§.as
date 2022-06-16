package §!!G§
{
   import flash.events.Event;
   
   public class §0#3§ extends Event
   {
      
      public static const §#"G§:String = "TournamentReload";
      
      public static var §"#%§:String = "TournamentExpired";
      
      public static var §,N§:String = "CurrentTournamentInfoUpdated";
      
      public static var §;"=§:String = "CurrentTournamentInfoLoaded";
      
      public static var §!#R§:String = "CurrentTournamentInfoInitialized";
      
      public static var §'"8§:String = "CurrentTournamentAssetsLoaded";
      
      public static var §6#U§:String = "UnconcludedTournamentLoaded";
      
      public static var §0""§:String = "UnconcludedTournamentUpdated";
      
      public static var §?"<§:String = "PreviousTournamentResultLoaded";
      
      public static var §7"c§:String = "PreviousTournamentResultUpdated";
      
      public static var §^"B§:String = "CurrentTournamentLevelScoresLoaded";
      
      public static var §]!I§:String = "CurrentTournamentStandingsLoaded";
      
      public static var §2!U§:String = "CurrentTournamentRewardClaimed";
      
      public static const §=e§:String = "AllDataLoaded";
       
      
      private var §+!&§:Object;
      
      public function §0#3§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§+!&§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §0#3§(type,this.data,bubbles,cancelable);
      }
      
      public function get data() : Object
      {
         return this.§+!&§;
      }
   }
}
