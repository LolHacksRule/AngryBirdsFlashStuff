package § !Z§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §^M§ extends ErrorEvent
   {
      
      public static const §-§:String = "thirdPartyCookiesDisabled";
       
      
      public function §^M§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §^M§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
