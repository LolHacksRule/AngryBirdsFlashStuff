package § "C§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §+!D§ extends ErrorEvent
   {
      
      public static const §25§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §25§ = "thirdPartyCookiesDisabled";
         }
      }
      
      public function §+!D§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new §+!D§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
