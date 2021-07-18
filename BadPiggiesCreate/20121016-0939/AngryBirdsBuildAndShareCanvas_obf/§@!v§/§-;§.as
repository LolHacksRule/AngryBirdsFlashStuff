package §@!v§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §-;§ extends ErrorEvent
   {
      
      public static const §5"!§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5"!§ = "thirdPartyCookiesDisabled";
         }
      }
      
      public function §-;§(param1:String, param2:Boolean = false, param3:Boolean = false)
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
         return new §-;§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
