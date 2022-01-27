package §^!#§
{
   import flash.events.Event;
   
   public class §6!^§ extends Event
   {
      
      public static const §'<§:String = "thirdPartyCookiesDisabled";
       
      
      public function §6!^§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §6!^§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
