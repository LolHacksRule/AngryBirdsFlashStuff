package §-D§
{
   import flash.events.Event;
   
   public class §3[§ extends Event
   {
      
      public static const §#M§:String = "OnCloseComplete";
       
      
      private var §7y§:Popup;
      
      public function §3[§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§7y§ = param2;
      }
      
      public function get §`!G§() : Popup
      {
         return this.§7y§;
      }
      
      override public function clone() : Event
      {
         return new §3[§(type,this.§7y§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
