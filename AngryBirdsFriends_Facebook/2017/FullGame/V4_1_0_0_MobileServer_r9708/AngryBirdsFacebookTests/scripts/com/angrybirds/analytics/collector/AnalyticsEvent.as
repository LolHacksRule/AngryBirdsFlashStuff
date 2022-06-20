package com.angrybirds.analytics.collector
{
   public class AnalyticsEvent
   {
       
      
      private var mType:String;
      
      private var mTimestamp:String;
      
      private var mParameters:Vector.<AnalyticsEventParameter>;
      
      public function AnalyticsEvent(type:String, timeStamp:String, parameters:Vector.<AnalyticsEventParameter>)
      {
         super();
         this.mType = type;
         this.mTimestamp = timeStamp;
         this.mParameters = parameters;
      }
      
      public function get type() : String
      {
         return this.mType;
      }
      
      public function get timestamp() : String
      {
         return this.mTimestamp;
      }
      
      public function get parameters() : Vector.<AnalyticsEventParameter>
      {
         return this.mParameters;
      }
   }
}
