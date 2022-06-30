package §;c§
{
   import flash.events.Event;
   
   public class §0o§ extends Event
   {
      
      public static const §3D§:String = "thirdPartyCookiesDisabled";
       
      
      public function §0o§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §0o§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
