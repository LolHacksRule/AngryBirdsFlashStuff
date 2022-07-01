package §45§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §6L§ extends ErrorEvent
   {
      
      public static const §`I§:String = "thirdPartyCookiesDisabled";
       
      
      public function §6L§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §6L§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
