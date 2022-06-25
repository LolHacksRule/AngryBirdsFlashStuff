package §?!O§
{
   import flash.events.Event;
   
   public class UserProgressEvent extends Event
   {
      
      public static const §"c§:String = "OnMightyEagleTimerComplete";
      
      public static const §7o§:String = "userProgressSaved";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §"c§ = "OnMightyEagleTimerComplete";
            do
            {
               §7o§ = "userProgressSaved";
            }
            while(_loc1_ && UserProgressEvent);
            
         }
      }
      
      public var data:Object;
      
      public function UserProgressEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
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
