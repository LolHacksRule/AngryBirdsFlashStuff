package §;f§
{
   import flash.events.Event;
   
   public class §3X§ extends Event
   {
      
      public static const §7k§:String = "thirdPartyCookiesDisabled";
       
      
      public function §3X§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §3X§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
