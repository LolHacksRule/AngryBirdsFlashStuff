package §2<§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §9G§ extends ErrorEvent
   {
      
      public static const §33§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §33§ = "thirdPartyCookiesDisabled";
         }
      }
      
      public function §9G§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new §9G§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
