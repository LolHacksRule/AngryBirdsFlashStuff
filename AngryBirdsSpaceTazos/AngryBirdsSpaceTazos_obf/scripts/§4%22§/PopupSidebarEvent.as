package §4"§
{
   import flash.events.Event;
   
   public class PopupSidebarEvent extends Event
   {
      
      public static const §5!<§:String = "PopupSidebarEvent.ON_ENTER_CREDITS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §5!<§ = "PopupSidebarEvent.ON_ENTER_CREDITS";
         }
      }
      
      public function PopupSidebarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
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
         return new PopupSidebarEvent(this.type,this.bubbles,this.cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupSidebarEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
