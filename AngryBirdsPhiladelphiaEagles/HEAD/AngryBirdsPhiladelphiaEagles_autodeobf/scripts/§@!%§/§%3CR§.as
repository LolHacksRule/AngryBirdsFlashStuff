package §@!%§
{
   import flash.events.Event;
   
   public class §<R§ extends Event
   {
      
      public static const §^!>§:String = "thirdPartyCookiesDisabled";
       
      
      public function §<R§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §<R§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
