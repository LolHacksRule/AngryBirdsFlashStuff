package §;f§
{
   import flash.events.Event;
   
   public class §3X§ extends Event
   {
      
      public static const §7k§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §7k§ = "thirdPartyCookiesDisabled";
         }
      }
      
      public function §3X§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super(param1,param2,param3);
         }
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
