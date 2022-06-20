package com.rovio.utils
{
   public class GoogleAnalyticsEvent
   {
       
      
      public var category:String = "";
      
      public var action:String = "";
      
      public var label:String = "";
      
      public var value:int = 0;
      
      public function GoogleAnalyticsEvent(category:String, action:String, label:String, value:int)
      {
         super();
         this.category = category;
         this.action = action;
         this.label = label;
         this.value = value;
      }
   }
}
