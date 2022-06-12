package §=,§
{
   import flash.events.Event;
   
   public class UserProgressEvent extends Event
   {
      
      public static const §-2§:String = "OnMightyEagleTimerComplete";
      
      public static const §+!f§:String = "userProgressSaved";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-2§ = "OnMightyEagleTimerComplete";
         }
         do
         {
            §+!f§ = "userProgressSaved";
         }
         while(_loc2_);
         
      }
      
      public var data:Object;
      
      public function UserProgressEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
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
