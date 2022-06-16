package §9"r§
{
   import flash.events.Event;
   
   public class §1#e§ extends Event
   {
      
      public static const §&"[§:String = "TournamentReload";
      
      public static var §="2§:String = "TournamentExpired";
      
      public static var §9"S§:String = "CurrentTournamentInfoUpdated";
      
      public static var §=;§:String = "CurrentTournamentInfoLoaded";
      
      public static var §7+§:String = "CurrentTournamentInfoInitialized";
      
      public static var §]!<§:String = "CurrentTournamentAssetsLoaded";
      
      public static var §=r§:String = "UnconcludedTournamentLoaded";
      
      public static var §<##§:String = "UnconcludedTournamentUpdated";
      
      public static var §<$;§:String = "PreviousTournamentResultLoaded";
      
      public static var §4"d§:String = "PreviousTournamentResultUpdated";
      
      public static var §<"Y§:String = "CurrentTournamentLevelScoresLoaded";
      
      public static var §>"d§:String = "CurrentTournamentStandingsLoaded";
      
      public static var §&t§:String = "CurrentTournamentRewardClaimed";
      
      public static const §`$4§:String = "AllDataLoaded";
       
      
      private var §["[§:Object;
      
      public function §1#e§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§["[§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §1#e§(type,this.data,bubbles,cancelable);
      }
      
      public function get data() : Object
      {
         return this.§["[§;
      }
   }
}
