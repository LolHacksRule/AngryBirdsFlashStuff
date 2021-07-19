package § "4§
{
   import flash.events.Event;
   
   public class UserProgressEvent extends Event
   {
      
      public static const §>!w§:String = "OnMightyEagleTimerComplete";
      
      public static const §?C§:String = "userProgressSaved";
      
      public static const §3#V§:String = "levelProgressSaved";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || UserProgressEvent)
         {
            §>!w§ = "OnMightyEagleTimerComplete";
            while(true)
            {
               §?C§ = "userProgressSaved";
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            §3#V§ = "levelProgressSaved";
            if(!(_loc2_ && _loc1_))
            {
               if(_loc1_ || UserProgressEvent)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var data:Object;
      
      public function UserProgressEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
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
         return new UserProgressEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("UserProgressEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
