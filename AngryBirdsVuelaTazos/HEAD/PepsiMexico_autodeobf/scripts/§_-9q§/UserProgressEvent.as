package §_-9q§
{
   import flash.events.Event;
   
   public class UserProgressEvent extends Event
   {
      
      public static const §_-hH§:String = "OnMightyEagleTimerComplete";
      
      public static const §_-ou§:String = "userProgressSaved";
       
      
      public function UserProgressEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
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
