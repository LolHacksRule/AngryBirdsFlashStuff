package §[8§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §'!B§ extends ErrorEvent
   {
      
      public static const §7O§:String = "thirdPartyCookiesDisabled";
       
      
      public function §'!B§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §'!B§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
