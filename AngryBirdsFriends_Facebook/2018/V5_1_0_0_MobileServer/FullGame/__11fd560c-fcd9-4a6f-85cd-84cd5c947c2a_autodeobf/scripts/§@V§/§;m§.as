package §@V§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §;m§ extends ErrorEvent
   {
      
      public static const §!$5§:String = "thirdPartyCookiesDisabled";
       
      
      public function §;m§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §;m§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
