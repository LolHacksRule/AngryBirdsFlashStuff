package com.rovio.utils
{
   public class GoogleAnalyticsEvent
   {
       
      
      public var category:String = "";
      
      public var action:String = "";
      
      public var label:String = "";
      
      public var value:int = 0;
      
      public function GoogleAnalyticsEvent(param1:String, param2:String, param3:String, param4:int)
      {
         super();
         this.category = param1;
         this.action = param2;
         this.label = param3;
         this.value = param4;
      }
   }
}
