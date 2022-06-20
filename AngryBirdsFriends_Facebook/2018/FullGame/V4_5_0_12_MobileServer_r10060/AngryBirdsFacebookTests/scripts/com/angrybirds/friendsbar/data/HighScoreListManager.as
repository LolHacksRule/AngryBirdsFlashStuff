package com.angrybirds.friendsbar.data
{
   public class HighScoreListManager
   {
       
      
      protected var mTotalScores:CachedFacebookFriends;
      
      protected var mLevelsScores:Object;
      
      protected var mServerRoot:String;
      
      protected var mUserId:String;
      
      protected var mUserName:String;
      
      public function HighScoreListManager(serverRoot:String, userId:String, userName:String)
      {
         this.mLevelsScores = {};
         super();
         this.mUserName = userName;
         this.mUserId = userId;
         this.mServerRoot = serverRoot;
      }
      
      public function getTotalScores() : CachedFacebookFriends
      {
         if(!this.mTotalScores)
         {
            this.mTotalScores = new CachedFacebookFriends(this.mUserId,this.mUserName,this.mServerRoot + "/friends/getOverallScores?forceRefresh=true",true,null,true);
         }
         return this.mTotalScores;
      }
      
      public function injectData(dataObject:Object) : void
      {
         this.mTotalScores = new CachedFacebookFriends(this.mUserId,this.mUserName,this.mServerRoot + "/friends/getOverallScores?forceRefresh=true",true,dataObject,true);
      }
      
      public function getScoresForLevel(episode:String, levelId:String, tournamentScores:Boolean = false, useCache:Boolean = true) : CachedFacebookFriends
      {
         var o:Object = null;
         if(useCache && this.mLevelsScores[levelId] && CachedFacebookFriends(this.mLevelsScores[levelId]).cacheValidForLevel())
         {
            this.mLevelsScores[levelId].data.sortOn("rank",Array.NUMERIC);
            for each(o in this.mLevelsScores[levelId].data)
            {
               if(o.targetOffset)
               {
                  o.targetOffset = 0;
               }
               if(o.offset)
               {
                  o.offset = 0;
               }
               if(o.beaten)
               {
                  o.beaten = false;
               }
            }
            return this.mLevelsScores[levelId];
         }
         return this.mLevelsScores[levelId] = new CachedFacebookFriends(this.mUserId,this.mUserName,this.mServerRoot + "/scores/getLevelScores?limit=1000&episode=" + episode + "&level=" + levelId,false,null,true,tournamentScores,false);
      }
      
      public function destroyLevelScores(levels:Array) : void
      {
         var levelId:String = null;
         for each(levelId in levels)
         {
            if(this.mLevelsScores[levelId])
            {
               this.mLevelsScores[levelId] = null;
            }
         }
      }
      
      public function getLevelScoresForUser(levelId:String, userId:String) : Number
      {
         var objScore:CachedFacebookFriends = this.mLevelsScores[levelId] as CachedFacebookFriends;
         return objScore.getUserScore(userId);
      }
      
      public function getTotalStars() : int
      {
         if(this.mTotalScores == null)
         {
            return 0;
         }
         return this.mTotalScores.getTotalStarsForUser(this.mUserId);
      }
      
      public function getTotalFeathers() : int
      {
         if(this.mTotalScores == null)
         {
            return 0;
         }
         return this.mTotalScores.getTotalFeathersForUser(this.mUserId);
      }
   }
}
