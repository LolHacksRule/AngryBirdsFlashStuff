package §1h§
{
   import flash.events.Event;
   
   public class UserProgressEvent extends Event
   {
      
      public static const §`!A§:String = "OnMightyEagleTimerComplete";
      
      public static const §+!K§:String = "userProgressSaved";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §`!A§ = "OnMightyEagleTimerComplete";
            do
            {
               §+!K§ = "userProgressSaved";
            }
            while(_loc1_);
            
         }
      }
      
      public function UserProgressEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
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
