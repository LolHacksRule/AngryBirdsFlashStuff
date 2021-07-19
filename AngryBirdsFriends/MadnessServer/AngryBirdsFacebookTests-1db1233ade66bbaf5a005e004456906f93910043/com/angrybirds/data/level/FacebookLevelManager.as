package com.angrybirds.data.level
{
   import com.angrybirds.states.StateFacebookLevelSelection;
   
   public class FacebookLevelManager extends LevelManager
   {
      
      private static var sPreviousLevelId:String = null;
      
      private static var sCurrentLevelId:String = null;
       
      
      public function FacebookLevelManager()
      {
         super();
      }
      
      public static function get previousLevelId() : String
      {
         return sPreviousLevelId;
      }
      
      public static function set previousLevelId(value:String) : void
      {
         sPreviousLevelId = value;
      }
      
      public function getFacebookNameFromLevelId(levelId:String) : String
      {
         var episode:EpisodeModel = null;
         var levelNumber:int = 0;
         try
         {
            episode = this.getEpisodeForLevel(levelId);
            levelNumber = episode.getLevelIndex(levelId) + 1;
            return levelNumber.toString();
         }
         catch(e:Error)
         {
            return levelId;
         }
      }
      
      override protected function createEpisodeModelFromData(episodeData:Object) : EpisodeModel
      {
         var episode:EpisodeModel = super.createEpisodeModelFromData(episodeData);
         if(episodeData.name == StateFacebookLevelSelection.EPISODE_TOURNAMENT)
         {
            episode.isTournament = true;
         }
         return episode;
      }
      
      public function isCurrentEpisodeTournament() : Boolean
      {
         return getCurrentEpisodeModel().isTournament;
      }
      
      public function set previousLevel(levelId:String) : void
      {
         mPreviousLevel = levelId;
      }
      
      override public function getEpisodeForLevel(levelId:String) : EpisodeModel
      {
         if(levelId.indexOf(StateFacebookLevelSelection.EPISODE_TOURNAMENT) != -1)
         {
            return getEpisodeByName(StateFacebookLevelSelection.EPISODE_TOURNAMENT);
         }
         return super.getEpisodeForLevel(levelId);
      }
      
      public function isCurrentEpisodeWonderland() : Boolean
      {
         return currentEpisode == 6;
      }
   }
}
