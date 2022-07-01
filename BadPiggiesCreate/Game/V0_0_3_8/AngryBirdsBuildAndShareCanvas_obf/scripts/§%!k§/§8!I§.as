package §%!k§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §8!I§ extends ErrorEvent
   {
      
      public static const §9!%§:String = "thirdPartyCookiesDisabled";
       
      
      public function §8!I§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §8!I§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
