package com.angrybirds.data
{
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class ExceptionUserIDsManager
   {
      
      private static var sInstance:ExceptionUserIDsManager;
       
      
      private var mUserIdsAlreadyChallenged:Array;
      
      private var mUserIdsAlreadyRequestedTodayForGifts:Dictionary;
      
      private var mUserIdsWhoHaveUninstalledApp:Dictionary;
      
      public function ExceptionUserIDsManager()
      {
         this.mUserIdsAlreadyChallenged = [];
         this.mUserIdsAlreadyRequestedTodayForGifts = new Dictionary();
         this.mUserIdsWhoHaveUninstalledApp = new Dictionary();
         super();
         if(sInstance)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         sInstance = this;
      }
      
      public static function get instance() : ExceptionUserIDsManager
      {
         if(!sInstance)
         {
            sInstance = new ExceptionUserIDsManager();
         }
         return sInstance;
      }
      
      public static function concatExceptionsWithoutDuplicates(listA:Array, listB:Array) : Array
      {
         var userID:String = null;
         var combined:Array = listA.concat();
         for each(userID in listB)
         {
            if(combined.indexOf(userID) == -1)
            {
               combined.push(userID);
            }
         }
         return combined;
      }
      
      public function addGiftRequestToUser(userId:String) : void
      {
         if(this.mUserIdsAlreadyRequestedTodayForGifts[userId] == null)
         {
            this.mUserIdsAlreadyRequestedTodayForGifts[userId] = userId;
         }
      }
      
      public function addChallengeRequestToUser(userId:String, skipStorage:Boolean = false) : void
      {
         var mySO:SharedObject = null;
         if(this.mUserIdsAlreadyChallenged.indexOf(userId) == -1)
         {
            this.mUserIdsAlreadyChallenged.push(userId);
         }
         if(!skipStorage)
         {
            try
            {
               mySO = SharedObject.getLocal(AngryBirdsFacebook.getLocalStorageID(),AngryBirdsFacebook.LOCAL_STORAGE_FOLDER);
               mySO.data.excludedChallenges = this.mUserIdsAlreadyChallenged;
               mySO.flush();
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function canSendGiftRequestTo(userId:String) : Boolean
      {
         return this.mUserIdsAlreadyRequestedTodayForGifts[userId] == null && this.mUserIdsWhoHaveUninstalledApp[userId] == null;
      }
      
      public function canSendChallengeRequestTo(userId:String) : Boolean
      {
         return this.mUserIdsAlreadyChallenged.indexOf(userId) == -1 && this.mUserIdsWhoHaveUninstalledApp[userId] == null;
      }
      
      public function canSendInviteTo(userId:String) : Boolean
      {
         return this.mUserIdsWhoHaveUninstalledApp[userId] == null;
      }
      
      public function canSendBragRequestTo(userId:String) : Boolean
      {
         return this.mUserIdsWhoHaveUninstalledApp[userId] == null;
      }
      
      public function getChallengeExcludeIDs() : Array
      {
         return this.mUserIdsAlreadyChallenged;
      }
      
      public function getGiftExcludeIDs() : Dictionary
      {
         return this.mUserIdsAlreadyRequestedTodayForGifts;
      }
      
      public function getUninstallIDs() : Dictionary
      {
         return this.mUserIdsWhoHaveUninstalledApp;
      }
      
      public function isUninstallIDsEmpty() : Boolean
      {
         var key:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:* = this.mUserIdsWhoHaveUninstalledApp;
         for(key in _loc3_)
         {
            return false;
         }
         return true;
      }
      
      public function injectChallengeExcludeData(dataObjects:Array) : void
      {
         var alreadyChallengedId:String = null;
         var mySO:SharedObject = null;
         var excludedChallenges:Array = [];
         try
         {
            mySO = SharedObject.getLocal(AngryBirdsFacebook.getLocalStorageID(),AngryBirdsFacebook.LOCAL_STORAGE_FOLDER);
            if(mySO.data.excludedChallenges != undefined)
            {
               excludedChallenges = mySO.data.excludedChallenges;
            }
         }
         catch(e:Error)
         {
         }
         for each(alreadyChallengedId in excludedChallenges)
         {
            this.addChallengeRequestToUser(alreadyChallengedId,true);
         }
      }
      
      public function injectGiftExcludeData(dataObjects:Array) : void
      {
         var alreadyRequestedId:String = null;
         for each(alreadyRequestedId in dataObjects)
         {
            this.addGiftRequestToUser(alreadyRequestedId);
         }
      }
      
      public function injectUninstallData(dataObjects:Array) : void
      {
         var uninstalledUIDs:String = null;
         for each(uninstalledUIDs in dataObjects)
         {
            if(this.mUserIdsWhoHaveUninstalledApp[uninstalledUIDs] == null)
            {
               this.mUserIdsWhoHaveUninstalledApp[uninstalledUIDs] = uninstalledUIDs;
            }
         }
      }
   }
}
