package §+!h§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §`!O§ extends ErrorEvent
   {
      
      public static const §4B§:String = "thirdPartyCookiesDisabled";
       
      
      public function §`!O§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §`!O§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
