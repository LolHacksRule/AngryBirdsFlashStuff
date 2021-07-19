package com.angrybirds.data.events
{
   import flash.events.Event;
   
   public class DailyRewardEvent extends Event
   {
      
      public static var DAILY_REWARD_CONSUMED:String = "DailyRewardConsumed";
       
      
      public function DailyRewardEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
   }
}
