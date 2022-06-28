package §_-Hb§
{
   import flash.events.Event;
   
   public class §_-a5§ extends Event
   {
      
      public static const §_-Gy§:String = "thirdPartyCookiesDisabled";
       
      
      public function §_-a5§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §_-a5§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
