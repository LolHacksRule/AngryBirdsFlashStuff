package §,!0§
{
   import flash.events.Event;
   
   public class §8!a§ extends Event
   {
      
      public static const §-!J§:String = "thirdPartyCookiesDisabled";
       
      
      public function §8!a§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §8!a§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
