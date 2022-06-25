package §4!C§
{
   import flash.events.Event;
   
   public class §^!g§ extends Event
   {
      
      public static const §]P§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §^!g§))
         {
            §]P§ = "thirdPartyCookiesDisabled";
         }
      }
      
      public function §^!g§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new §^!g§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[RetryingURLLoaderError] \'The user most likely has third party cookies disabled.\'";
      }
   }
}
