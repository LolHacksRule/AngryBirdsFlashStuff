package §=j§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §50§ extends ErrorEvent
   {
      
      public static const §2"1§:String = "thirdPartyCookiesDisabled";
       
      
      public function §50§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §50§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
