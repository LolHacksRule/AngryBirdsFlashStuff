package §8!B§
{
   import flash.events.Event;
   
   public class UserProgressEvent extends Event
   {
      
      public static const §0J§:String = "OnMightyEagleTimerComplete";
      
      public static const §9n§:String = "userProgressSaved";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0J§ = "OnMightyEagleTimerComplete";
            do
            {
               §9n§ = "userProgressSaved";
            }
            while(!_loc1_);
            
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
