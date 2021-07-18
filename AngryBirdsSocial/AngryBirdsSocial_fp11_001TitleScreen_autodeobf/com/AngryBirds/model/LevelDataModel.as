package com.AngryBirds.model
{
   public class LevelDataModel
   {
       
      
      private var mGlobalHighscore:int;
      
      private var mGlobalHighscorePlayer:String;
      
      private var mLevelID:String;
      
      private var mLevelType:String;
      
      private var mLevelURL:String;
      
      private var mLevelName:String;
      
      private var mLevelCreator:String;
      
      private var mTimesLiked:int;
      
      private var mTimesFavorited:int;
      
      private var mTimesPlayed:int;
      
      public function LevelDataModel()
      {
         super();
      }
      
      public function get levelURL() : String
      {
         return this.mLevelURL;
      }
      
      public function set levelURL(param1:String) : void
      {
         this.mLevelURL = param1;
      }
      
      public function get levelID() : String
      {
         return this.mLevelID;
      }
      
      public function set levelID(param1:String) : void
      {
         this.mLevelID = param1;
      }
      
      public function get levelCreator() : String
      {
         return this.mLevelCreator;
      }
      
      public function set levelCreator(param1:String) : void
      {
         this.mLevelCreator = param1;
      }
      
      public function get levelName() : String
      {
         return this.mLevelName;
      }
      
      public function set levelName(param1:String) : void
      {
         this.mLevelName = param1;
      }
      
      public function get globalHighscorePlayer() : String
      {
         return this.mGlobalHighscorePlayer;
      }
      
      public function set globalHighscorePlayer(param1:String) : void
      {
         this.mGlobalHighscorePlayer = param1;
      }
      
      public function get levelType() : String
      {
         return this.mLevelType;
      }
      
      public function set levelType(param1:String) : void
      {
         this.mLevelType = param1;
      }
      
      public function get globalHighscore() : int
      {
         return this.mGlobalHighscore;
      }
      
      public function set globalHighscore(param1:int) : void
      {
         this.mGlobalHighscore = param1;
      }
      
      public function get timesLiked() : int
      {
         return this.mTimesLiked;
      }
      
      public function set timesLiked(param1:int) : void
      {
         this.mTimesLiked = param1;
      }
      
      public function get timesFavorited() : int
      {
         return this.mTimesFavorited;
      }
      
      public function set timesFavorited(param1:int) : void
      {
         this.mTimesFavorited = param1;
      }
      
      public function get timesPlayed() : int
      {
         return this.mTimesPlayed;
      }
      
      public function set timesPlayed(param1:int) : void
      {
         this.mTimesPlayed = param1;
      }
   }
}
