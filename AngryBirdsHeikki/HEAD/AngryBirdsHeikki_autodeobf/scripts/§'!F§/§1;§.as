package §'!F§
{
   import flash.events.Event;
   
   public class §1;§ extends Event
   {
      
      public static const §2P§:String = "OnCloseComplete";
       
      
      private var §?!J§:Popup;
      
      public function §1;§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§?!J§ = param2;
      }
      
      public function get §!6§() : Popup
      {
         return this.§?!J§;
      }
      
      override public function clone() : Event
      {
         return new §1;§(type,this.§?!J§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
