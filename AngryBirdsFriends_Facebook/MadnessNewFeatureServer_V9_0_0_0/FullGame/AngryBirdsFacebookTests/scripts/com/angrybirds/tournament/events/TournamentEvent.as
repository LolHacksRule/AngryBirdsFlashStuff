package com.angrybirds.tournament.events
{
   import flash.events.Event;
   
   public class TournamentEvent extends Event
   {
      
      public static const TOURNAMENT_RELOAD:String = "TournamentReload";
      
      public static var TOURNAMENT_EXPIRED:String = "TournamentExpired";
      
      public static var CURRENT_TOURNAMENT_INFO_UPDATED:String = "CurrentTournamentInfoUpdated";
      
      public static var CURRENT_TOURNAMENT_INFO_LOADED:String = "CurrentTournamentInfoLoaded";
      
      public static var CURRENT_TOURNAMENT_INFO_INITIALIZED:String = "CurrentTournamentInfoInitialized";
      
      public static var CURRENT_TOURNAMENT_ASSETS_LOADED:String = "CurrentTournamentAssetsLoaded";
      
      public static var TOURNAMENT_LOADED:String = "TournamentLoaded";
      
      public static var OVERLAPPING_TOURNAMENTS_INFO_LOADED:String = "OverlappingTournamentsInfoLoaded";
      
      public static var OVERLAPPING_TOURNAMENTS_DISABLED:String = "OverlappingTournamentsDisabled";
      
      public static var OVERLAPPING_TOURNAMENTS_INFO_NOT_FOUND:String = "OverlappingTournamentsNotFound";
      
      public static var UNCONCLUDED_TOURNAMENT_LOADED:String = "UnconcludedTournamentLoaded";
      
      public static var UNCONCLUDED_TOURNAMENT_UPDATED:String = "UnconcludedTournamentUpdated";
      
      public static var PREVIOUS_TOURNAMENT_RESULT_LOADED:String = "PreviousTournamentResultLoaded";
      
      public static var PREVIOUS_TOURNAMENT_RESULT_UPDATED:String = "PreviousTournamentResultUpdated";
      
      public static var CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED:String = "CurrentTournamentLevelScoresLoaded";
      
      public static var CURRENT_TOURNAMENT_STANDINGS_LOADED:String = "CurrentTournamentStandingsLoaded";
      
      public static var CURRENT_TOURNAMENT_REWARD_CLAIMED:String = "CurrentTournamentRewardClaimed";
      
      public static const ALL_MAIN_MENU_DATA_LOADED:String = "AllMainMenuDataLoaded";
       
      
      private var mData:Object;
      
      public function TournamentEvent(type:String, data:Object = null, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.mData = data;
      }
      
      override public function clone() : Event
      {
         return new TournamentEvent(type,this.data,bubbles,cancelable);
      }
      
      public function get data() : Object
      {
         return this.mData;
      }
   }
}
