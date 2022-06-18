package com.angrybirds.engine.leveleventmanager
{
   public class LevelEvent
   {
       
      
      private var mData;
      
      private var mEventName:String;
      
      private var mTriggerType:String;
      
      public function LevelEvent(eventName:String, data:*, triggerType:String)
      {
         super();
         this.mData = data;
         this.mEventName = eventName;
         this.mTriggerType = triggerType;
      }
      
      public function get data() : *
      {
         return this.mData;
      }
      
      public function get eventName() : String
      {
         return this.mEventName;
      }
      
      public function get triggerType() : String
      {
         return this.mTriggerType;
      }
   }
}
