package §2!&§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §#4§ extends ErrorEvent
   {
      
      public static const §75§:String = "thirdPartyCookiesDisabled";
       
      
      public function §#4§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §#4§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
