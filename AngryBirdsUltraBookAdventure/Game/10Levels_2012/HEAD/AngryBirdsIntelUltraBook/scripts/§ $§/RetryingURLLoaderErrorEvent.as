package § $§
{
   import flash.events.Event;
   
   public class RetryingURLLoaderErrorEvent extends Event
   {
      
      public static const §9#§:String = "thirdPartyCookiesDisabled";
       
      
      public function RetryingURLLoaderErrorEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new RetryingURLLoaderErrorEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
