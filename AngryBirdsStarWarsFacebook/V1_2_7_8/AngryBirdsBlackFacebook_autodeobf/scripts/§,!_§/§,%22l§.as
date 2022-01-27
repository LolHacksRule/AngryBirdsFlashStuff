package §,!_§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §,"l§ extends ErrorEvent
   {
      
      public static const §18§:String = "thirdPartyCookiesDisabled";
       
      
      public function §,"l§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §,"l§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
