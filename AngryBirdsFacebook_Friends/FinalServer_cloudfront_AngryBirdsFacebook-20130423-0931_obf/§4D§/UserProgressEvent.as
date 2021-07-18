package §4D§
{
   import flash.events.Event;
   
   public class UserProgressEvent extends Event
   {
      
      public static const §[!y§:String = "OnMightyEagleTimerComplete";
      
      public static const §@O§:String = "userProgressSaved";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || UserProgressEvent)
         {
            §[!y§ = "OnMightyEagleTimerComplete";
         }
         do
         {
            §@O§ = "userProgressSaved";
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public var data:Object;
      
      public function UserProgressEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
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
