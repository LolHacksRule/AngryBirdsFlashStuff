package §>G§
{
   import flash.events.Event;
   
   public class PopupSidebarEvent extends Event
   {
      
      public static const §@n§:String = "PopupSidebarEvent.ON_ENTER_CREDITS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §@n§ = "PopupSidebarEvent.ON_ENTER_CREDITS";
         }
      }
      
      public function PopupSidebarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
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
         return formatToString("PopupSidebarEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
