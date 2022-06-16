package com.angrybirds.data.level.object
{
   public class DestroyAttachedJoint
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var mTimer:Number = 0;
      
      protected var mAnnihilationTime:Number;
      
      private var mIsOneWayDestroyed:Boolean = false;
      
      protected var mTimerStarted:Boolean = false;
      
      private var mDistanceToDestroyChild:Number;
      
      public function DestroyAttachedJoint(id1:int, id2:int, time:Number, isOneWayDestroyed:Boolean, distanceToDestroyChild:Number)
      {
         super();
         this.mObjectId1 = id1;
         this.mObjectId2 = id2;
         this.mAnnihilationTime = Math.floor(time * 1000);
         this.mIsOneWayDestroyed = isOneWayDestroyed;
         this.mDistanceToDestroyChild = distanceToDestroyChild;
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
      
      public function set timerStarted(value:Boolean) : void
      {
         this.mTimerStarted = value;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.mDistanceToDestroyChild;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.mIsOneWayDestroyed;
      }
      
      public function update(delta:Number) : Boolean
      {
         this.mTimer += delta;
         if(this.mTimer >= this.mAnnihilationTime)
         {
            return false;
         }
         return true;
      }
   }
}
