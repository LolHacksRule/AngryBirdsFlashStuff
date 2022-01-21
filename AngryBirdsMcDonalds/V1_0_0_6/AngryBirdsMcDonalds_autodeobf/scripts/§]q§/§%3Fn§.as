package §]q§
{
   import flash.events.Event;
   
   public class §?n§ extends Event
   {
      
      public static const §[1§:String = "OnCloseComplete";
       
      
      private var §"!n§:Popup;
      
      public function §?n§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§"!n§ = param2;
      }
      
      public function get popup() : Popup
      {
         return this.§"!n§;
      }
      
      override public function clone() : Event
      {
         return new §?n§(type,this.§"!n§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
