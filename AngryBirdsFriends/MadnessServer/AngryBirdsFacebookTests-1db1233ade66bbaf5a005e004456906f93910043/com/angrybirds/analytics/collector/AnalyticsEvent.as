package com.angrybirds.analytics.collector
{
   public class AnalyticsEvent
   {
       
      
      private var mType:String;
      
      private var mTimestamp:Number;
      
      private var mTimeZone:Number;
      
      private var mParametersObject:Object;
      
      public function AnalyticsEvent(type:String, parametersObject:Object)
      {
         super();
         this.mType = type;
         this.mParametersObject = parametersObject;
         var d:Date = new Date();
         this.mTimestamp = d.time;
         this.mTimeZone = d.timezoneOffset * 60;
      }
      
      public function get type() : String
      {
         return this.mType;
      }
      
      public function get timestamp() : Number
      {
         return this.mTimestamp;
      }
      
      public function get tz() : Number
      {
         return this.mTimeZone;
      }
      
      public function get parameters() : Object
      {
         return this.mParametersObject;
      }
   }
}
