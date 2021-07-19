package com.angrybirds.analytics.collector
{
   public class AnalyticsEventParameter
   {
       
      
      private var mKey:String;
      
      private var mValue:Object;
      
      public function AnalyticsEventParameter(key:String, value:Object)
      {
         super();
         this.mKey = key;
         this.mValue = value;
      }
      
      public function get key() : String
      {
         return this.mKey;
      }
      
      public function get value() : Object
      {
         return this.mValue;
      }
   }
}
