package §^!W§
{
   import flash.events.Event;
   
   public class UserProgressEvent extends Event
   {
      
      public static const §'!6§:String = "OnMightyEagleTimerComplete";
      
      public static const §!!Z§:String = "userProgressSaved";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && UserProgressEvent))
         {
            §'!6§ = "OnMightyEagleTimerComplete";
         }
         do
         {
            §!!Z§ = "userProgressSaved";
         }
         while(!_loc2_);
         
      }
      
      public var data:Object;
      
      public function UserProgressEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
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
