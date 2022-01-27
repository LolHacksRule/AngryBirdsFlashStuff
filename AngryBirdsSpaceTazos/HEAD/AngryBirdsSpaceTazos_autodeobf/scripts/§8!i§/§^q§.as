package §8!i§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §^q§ extends ErrorEvent
   {
      
      public static const §get §:String = "thirdPartyCookiesDisabled";
       
      
      public function §^q§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §^q§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
