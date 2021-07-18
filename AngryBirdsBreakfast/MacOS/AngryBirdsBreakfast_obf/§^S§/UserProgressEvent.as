package §^S§
{
   import flash.events.Event;
   
   public class UserProgressEvent extends Event
   {
      
      public static const §-!9§:String = "OnMightyEagleTimerComplete";
      
      public static const §!!e§:String = "userProgressSaved";
      
      public static const § n§:String = "levelProgressSaved";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!9§ = "OnMightyEagleTimerComplete";
            while(true)
            {
               §!!e§ = "userProgressSaved";
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     § n§ = "levelProgressSaved";
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public var data:Object;
      
      public function UserProgressEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
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
