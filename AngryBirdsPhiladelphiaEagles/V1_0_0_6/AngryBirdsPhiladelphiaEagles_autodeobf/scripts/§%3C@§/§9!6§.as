package §<@§
{
   import flash.events.Event;
   
   public class §9!6§ extends Event
   {
      
      public static const §9,§:String = "thirdPartyCookiesDisabled";
       
      
      public function §9!6§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §9!6§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
