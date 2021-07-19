package com.AngryBirds.io
{
   public class ServerCommands
   {
      
      public static const COMMAND_LOGIN_USER:String = "login";
      
      public static const COMMAND_GET_STATISTICS:String = "getStats";
      
      public static const COMMAND_UPDATE_STATISTICS:String = "updateStats";
      
      public static const COMMAND_GET_SCORE_FOR_LEVEL:String = "getUserHighScore";
      
      public static const COMMAND_STORE_SCORE_FOR_LEVEL:String = "submitHighScore";
      
      public static const COMMAND_GET_LEVEL:String = "downloadLevel";
      
      public static const COMMAND_UPLOAD_LEVEL:String = "uploadLevel";
      
      public static const COMMAND_STORE_LEVEL_THUMBNAIL:String = "uploadScreenShot";
      
      public static const COMMAND_GET_FRIEND_SCORES_FOR_LEVEL:String = "getFriendScoresForLevel";
      
      public static const COMMAND_GET_FACEBOOK_USER_IDENTIFIERS:String = "getFacebookUserIdentifiers";
      
      public static const COMMAND_SET_LEVEL_RATING:String = "setLevelRating";
      
      public static const COMMAND_GET_MORE_LEVELS:String = "getLevelList";
       
      
      public function ServerCommands()
      {
         super();
      }
   }
}
