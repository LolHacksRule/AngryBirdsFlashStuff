package com.AngryBirds.model
{
   public class UnlockedItemModel
   {
       
      
      public var mObject:String;
      
      public var mObjectId:uint;
      
      public var mUnlockedTime:uint;
      
      public function UnlockedItemModel(param1:String, param2:uint)
      {
         super();
         this.mObject = param1;
         this.mObjectId = param2;
      }
   }
}
