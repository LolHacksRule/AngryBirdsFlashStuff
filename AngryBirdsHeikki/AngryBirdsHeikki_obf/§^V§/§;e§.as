package §^V§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §;e§ extends ErrorEvent
   {
      
      public static const §<4§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<4§ = "thirdPartyCookiesDisabled";
         }
      }
      
      public function §;e§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new §;e§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
