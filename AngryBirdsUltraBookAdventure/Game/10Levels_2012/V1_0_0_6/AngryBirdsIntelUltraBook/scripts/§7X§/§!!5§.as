package §7X§
{
   import flash.events.Event;
   
   public class §!!5§ extends Event
   {
      
      public static const §[!§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §[!§ = "thirdPartyCookiesDisabled";
         }
      }
      
      public function §!!5§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new §!!5§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
