package §%!n§
{
   import flash.events.Event;
   
   public class UserProgressEvent extends Event
   {
      
      public static const §,!w§:String = "OnMightyEagleTimerComplete";
      
      public static const §0!u§:String = "userProgressSaved";
      
      public static const § b§:String = "levelProgressSaved";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §,!w§ = "OnMightyEagleTimerComplete";
         }
         while(true)
         {
            §0!u§ = "userProgressSaved";
            while(!(_loc1_ && _loc2_))
            {
               § b§ = "levelProgressSaved";
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public var data:Object;
      
      public function UserProgressEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new UserProgressEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("UserProgressEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
