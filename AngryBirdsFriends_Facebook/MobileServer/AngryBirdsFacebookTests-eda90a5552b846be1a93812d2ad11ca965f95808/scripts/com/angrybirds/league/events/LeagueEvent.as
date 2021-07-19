package com.angrybirds.league.events
{
   import flash.events.Event;
   
   public class LeagueEvent extends Event
   {
      
      public static const LEAGUE_CURRENT_STANDINGS_LOADED:String = "LeagueCurrentStandingsLoaded";
      
      public static const UNCONCLUDED_LEAGUE_LOADED:String = "UnconcludedLeagueLoaded";
      
      public static const UNCONCLUDED_ALL_UPDATED:String = "UnconcludedLeagueUpdated";
      
      public static const LEAGUE_REWARD_CLAIMED:String = "LeagueRewardClaimed";
      
      public static const ALL_PREVIOUS_RESULT_LOADED:String = "AllPreviousResultLoaded";
      
      public static const LEAGUE_PROFILE_LOADED:String = "LeagueProfileLoaded";
      
      public static const ALL_UNCONCLUDED_LOADED:String = "AllUnconcludedLoaded";
      
      public static const ALL_REWARDS_CLAIMED:String = "AllRewardsClaimed";
      
      public static const PLAYER_PROFILE_DATA_UPDATED:String = "PlayerProfileDataUpdated";
      
      public static const RESET_SCORE_DATA_LOADING_COMPLETED:String = "ResetScoreDataLoadingCompleted";
      
      public static const ALL_DATA_LOADED:String = "AllDataLoaded";
       
      
      private var mData:Object;
      
      public function LeagueEvent(type:String, data:Object = null, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.mData = data;
      }
      
      public function get data() : Object
      {
         return this.mData;
      }
   }
}
