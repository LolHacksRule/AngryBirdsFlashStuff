package com.angrybirds.data.level.object
{
   public class DestroyAttachedJoint
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var mTimer:Number = 0;
      
      protected var mAnnihilationTime:Number;
      
      private var mIsOneWayDestroy:Boolean = false;
      
      protected var mTimerStarted:Boolean = false;
      
      public function DestroyAttachedJoint(param1:int, param2:int, param3:Number, param4:Boolean)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.mAnnihilationTime = Math.floor(param3 * 1000);
         this.mIsOneWayDestroy = param4;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get timerStarted() : Boolean
      {
         return this.mTimerStarted;
      }
      
      public function set timerStarted(param1:Boolean) : void
      {
         this.mTimerStarted = param1;
      }
      
      public function get isOneWayDestroy() : Boolean
      {
         return this.mIsOneWayDestroy;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.mTimer += param1;
         if(this.mTimer >= this.mAnnihilationTime)
         {
            return false;
         }
         return true;
      }
   }
}
