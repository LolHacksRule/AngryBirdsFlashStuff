package §1l§
{
   import flash.events.Event;
   
   public class PopupClosedEvent extends Event
   {
      
      public static const §["%§:String = "PopupClosedEvent.ON_POPUP_CLOSE";
       
      
      public function PopupClosedEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new PopupSidebarEvent(this.type,this.bubbles,this.cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupClosedEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
