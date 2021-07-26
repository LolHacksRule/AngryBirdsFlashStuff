package §4S§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §+!p§ extends ErrorEvent
   {
      
      public static const §2$9§:String = "thirdPartyCookiesDisabled";
       
      
      public function §+!p§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §+!p§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
