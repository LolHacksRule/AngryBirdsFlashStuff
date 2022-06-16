package com.angrybirds.spiningwheel.events
{
   import flash.events.Event;
   
   public class SpinningWheelEvent extends Event
   {
      
      public static const DAILY_REWARDS_DATA_LOADED:String = "DREvntLoadedRewardsData";
      
      public static const NEW_SPIN_AVAILABLE:String = "DREvntNewSpinAvailable";
      
      public static const SPIN_REWARD_RECEIVED:String = "DREvntLoadedRewardsReceived";
      
      public static const EVENT_SPIN_COMPLETE:String = "SpinWheelEntComplete";
      
      public static const EVENT_SPINNING_WHEEL_DATA_ERROR:String = "SpinWheelEntDataError";
      
      public static const REWARD_CLAIMED_FROM_WHEEL:String = "DPRewardFromWheel";
      
      public static const WHEEL_SPUN:String = "DPEventSpinwheel";
       
      
      private var _mData:Object;
      
      public function SpinningWheelEvent(type:String, data:Object = null, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this._mData = data;
      }
      
      public function get data() : Object
      {
         return this._mData;
      }
      
      override public function clone() : Event
      {
         return new SpinningWheelEvent(type,this.data,bubbles,cancelable);
      }
   }
}
