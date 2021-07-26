package com.AngryBirds.model
{
   public class UnlockedItemModel
   {
       
      
      public var mObject:String;
      
      public var mObjectId:uint;
      
      public var mUnlockedTime:uint;
      
      public function UnlockedItemModel(object:String, objectId:uint)
      {
         super();
         this.mObject = object;
         this.mObjectId = objectId;
      }
   }
}
