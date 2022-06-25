package §;!5§
{
   import flash.events.Event;
   
   public class §3!^§ extends Event
   {
      
      public static const §2_§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §2_§ = "thirdPartyCookiesDisabled";
         }
      }
      
      public function §3!^§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new §3!^§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
