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
      
      public function LevelDataModel()
      {
         super();
      }
      
      public function get levelURL() : String
      {
         return this.mLevelURL;
      }
      
      public function set levelURL(value:String) : void
      {
         this.mLevelURL = value;
      }
      
      public function get levelID() : String
      {
         return this.mLevelID;
      }
      
      public function set levelID(value:String) : void
      {
         this.mLevelID = value;
      }
      
      public function get levelCreator() : String
      {
         return this.mLevelCreator;
      }
      
      public function set levelCreator(value:String) : void
      {
         this.mLevelCreator = value;
      }
      
      public function get levelName() : String
      {
         return this.mLevelName;
      }
      
      public function set levelName(value:String) : void
      {
         this.mLevelName = value;
      }
      
      public function get globalHighscorePlayer() : String
      {
         return this.mGlobalHighscorePlayer;
      }
      
      public function set globalHighscorePlayer(value:String) : void
      {
         this.mGlobalHighscorePlayer = value;
      }
      
      public function get levelType() : String
      {
         return this.mLevelType;
      }
      
      public function set levelType(value:String) : void
      {
         this.mLevelType = value;
      }
      
      public function get globalHighscore() : int
      {
         return this.mGlobalHighscore;
      }
      
      public function set globalHighscore(value:int) : void
      {
         this.mGlobalHighscore = value;
      }
   }
}
