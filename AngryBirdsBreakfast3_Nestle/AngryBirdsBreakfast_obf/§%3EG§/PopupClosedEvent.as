package §>G§
{
   import flash.events.Event;
   
   public class PopupClosedEvent extends Event
   {
      
      public static const §8!;§:String = "PopupClosedEvent.ON_POPUP_CLOSE";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §8!;§ = "PopupClosedEvent.ON_POPUP_CLOSE";
         }
      }
      
      public function PopupClosedEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super(param1,param2,param3);
         }
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
