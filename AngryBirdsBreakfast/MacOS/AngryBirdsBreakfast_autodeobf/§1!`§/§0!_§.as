package §1!`§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §0!_§ extends ErrorEvent
   {
      
      public static const §,!4§:String = "thirdPartyCookiesDisabled";
       
      
      public function §0!_§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §0!_§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
