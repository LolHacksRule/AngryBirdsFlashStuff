package §7g§
{
   import flash.events.Event;
   
   public class PopupSidebarEvent extends Event
   {
      
      public static const §`7§:String = "PopupSidebarEvent.ON_ENTER_CREDITS";
       
      
      public function PopupSidebarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new PopupSidebarEvent(this.type,this.bubbles,this.cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupSidebarEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
