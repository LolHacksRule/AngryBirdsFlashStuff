package § I§
{
   import flash.events.Event;
   
   public class UserProgressEvent extends Event
   {
      
      public static const §9""§:String = "OnMightyEagleTimerComplete";
      
      public static const §<O§:String = "userProgressSaved";
      
      public static const §=!E§:String = "levelProgressSaved";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §9""§ = "OnMightyEagleTimerComplete";
            while(true)
            {
               §<O§ = "userProgressSaved";
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            §=!E§ = "levelProgressSaved";
            if(_loc1_ || _loc1_)
            {
               if(_loc1_ || _loc1_)
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
