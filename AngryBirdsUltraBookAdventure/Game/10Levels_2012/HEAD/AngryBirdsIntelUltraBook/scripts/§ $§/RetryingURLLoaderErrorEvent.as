package § $§
{
   import flash.events.Event;
   
   public class RetryingURLLoaderErrorEvent extends Event
   {
      
      public static const §9#§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9#§ = "thirdPartyCookiesDisabled";
         }
      }
      
      public function RetryingURLLoaderErrorEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new RetryingURLLoaderErrorEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
