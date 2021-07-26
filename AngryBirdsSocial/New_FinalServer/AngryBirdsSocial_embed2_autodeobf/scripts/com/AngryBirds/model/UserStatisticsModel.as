package com.AngryBirds.model
{
   import com.rovio.factory.Log;
   
   public class UserStatisticsModel
   {
       
      
      private var mPlayTimes:uint = 0;
      
      private var mUnlockList:Vector.<UnlockedItemModel>;
      
      public function UserStatisticsModel()
      {
         super();
         this.mUnlockList = new Vector.<UnlockedItemModel>();
      }
      
      public function get playTimes() : uint
      {
         return this.mPlayTimes;
      }
      
      public function set playTimes(value:uint) : void
      {
         this.mPlayTimes = value;
      }
      
      public function addUnlockedItem(object:String, objectId:uint, unlockedTime:uint) : Boolean
      {
         if(this.isItemUnlocked(object))
         {
            return false;
         }
         this.mUnlockList.push(new UnlockedItemModel(object,objectId));
         return true;
      }
      
      public function isItemUnlocked(object:String) : Boolean
      {
         var unlockedItem:UnlockedItemModel = null;
         for each(unlockedItem in this.mUnlockList)
         {
            if(unlockedItem.mObject == object)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getUnlockedItem(object:String) : UnlockedItemModel
      {
         var unlockedItem:UnlockedItemModel = null;
         if(!this.isItemUnlocked(object))
         {
            return null;
         }
         for each(unlockedItem in this.mUnlockList)
         {
            if(unlockedItem.mObject == object)
            {
               return unlockedItem;
            }
         }
         return null;
      }
      
      public function clearUnlockedItems() : void
      {
         this.mUnlockList = null;
         this.mUnlockList = new Vector.<UnlockedItemModel>();
      }
      
      public function createUnlocksFromResponse(response:Array) : void
      {
         var tmpAr:Array = null;
         if(response == null)
         {
            return;
         }
         for each(tmpAr in response)
         {
            if(this.addUnlockedItem(tmpAr[0],tmpAr[1],666) == true)
            {
               Log.log("ADDED UNLOCK: " + tmpAr[0] + ", " + tmpAr[1] + ", 666");
            }
         }
      }
   }
}
