package §@r§
{
   import flash.events.Event;
   
   public class §-w§ extends Event
   {
      
      public static const §;E§:String = "OnCloseComplete";
       
      
      private var §3!D§:Popup;
      
      public function §-w§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§3!D§ = param2;
      }
      
      public function get §;!D§() : Popup
      {
         return this.§3!D§;
      }
      
      override public function clone() : Event
      {
         return new §-w§(type,this.§3!D§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
