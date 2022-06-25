package §-^§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §4-§ extends ErrorEvent
   {
      
      public static const §4!m§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4!m§ = "thirdPartyCookiesDisabled";
         }
      }
      
      public function §4-§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new §4-§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
