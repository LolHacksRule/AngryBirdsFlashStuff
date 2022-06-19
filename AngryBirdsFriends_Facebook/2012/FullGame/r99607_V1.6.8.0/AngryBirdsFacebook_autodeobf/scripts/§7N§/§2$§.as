package §7N§
{
   import flash.events.Event;
   
   public class §2$§ extends Event
   {
      
      public static const §"!H§:String = "OnCloseComplete";
       
      
      private var §do§:Popup;
      
      public function §2$§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§do§ = param2;
      }
      
      public function get §>"7§() : Popup
      {
         return this.§do§;
      }
      
      override public function clone() : Event
      {
         return new §2$§(type,this.§do§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
