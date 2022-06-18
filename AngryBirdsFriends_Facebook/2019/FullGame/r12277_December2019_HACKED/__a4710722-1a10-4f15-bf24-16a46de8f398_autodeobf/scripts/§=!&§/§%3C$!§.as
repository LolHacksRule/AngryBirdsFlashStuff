package §=!&§
{
   import flash.events.Event;
   
   public class §<$!§ extends Event
   {
      
      public static const §<$ §:String = "TournamentReload";
      
      public static var §#F§:String = "TournamentExpired";
      
      public static var §4#X§:String = "CurrentTournamentInfoUpdated";
      
      public static var §&#>§:String = "CurrentTournamentInfoLoaded";
      
      public static var §'!H§:String = "CurrentTournamentInfoInitialized";
      
      public static var §3!=§:String = "CurrentTournamentAssetsLoaded";
      
      public static var §4!<§:String = "TournamentLoaded";
      
      public static var §,"N§:String = "OverlappingTournamentsInfoLoaded";
      
      public static var §[!Y§:String = "OverlappingTournamentsDisabled";
      
      public static var §[p§:String = "OverlappingTournamentsNotFound";
      
      public static var §0"Q§:String = "UnconcludedTournamentLoaded";
      
      public static var §%>§:String = "UnconcludedTournamentUpdated";
      
      public static var §,6§:String = "PreviousTournamentResultLoaded";
      
      public static var §[!§:String = "PreviousTournamentResultUpdated";
      
      public static var §?"+§:String = "CurrentTournamentLevelScoresLoaded";
      
      public static var §4!G§:String = "CurrentTournamentStandingsLoaded";
      
      public static var §'#n§:String = "CurrentTournamentRewardClaimed";
      
      public static const §<#-§:String = "AllMainMenuDataLoaded";
       
      
      private var §6"G§:Object;
      
      public function §<$!§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§6"G§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §<$!§(type,this.data,bubbles,cancelable);
      }
      
      public function get data() : Object
      {
         return this.§6"G§;
      }
   }
}
