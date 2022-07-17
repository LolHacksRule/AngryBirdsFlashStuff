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
      
      public function set playTimes(param1:uint) : void
      {
         this.mPlayTimes = param1;
      }
      
      public function addUnlockedItem(param1:String, param2:uint, param3:uint) : Boolean
      {
         if(this.isItemUnlocked(param1))
         {
            return false;
         }
         this.mUnlockList.push(new UnlockedItemModel(param1,param2));
         return true;
      }
      
      public function isItemUnlocked(param1:String) : Boolean
      {
         var _loc2_:UnlockedItemModel = null;
         for each(_loc2_ in this.mUnlockList)
         {
            if(_loc2_.mObject == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getUnlockedItem(param1:String) : UnlockedItemModel
      {
         var _loc2_:UnlockedItemModel = null;
         if(!this.isItemUnlocked(param1))
         {
            return null;
         }
         for each(_loc2_ in this.mUnlockList)
         {
            if(_loc2_.mObject == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function clearUnlockedItems() : void
      {
         this.mUnlockList = null;
         this.mUnlockList = new Vector.<UnlockedItemModel>();
      }
      
      public function createUnlocksFromResponse(param1:Array) : void
      {
         var _loc2_:Array = null;
         if(param1 == null)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            if(this.addUnlockedItem(_loc2_[0],_loc2_[1],666) == true)
            {
               Log.log("ADDED UNLOCK: " + _loc2_[0] + ", " + _loc2_[1] + ", 666");
            }
         }
      }
   }
}
