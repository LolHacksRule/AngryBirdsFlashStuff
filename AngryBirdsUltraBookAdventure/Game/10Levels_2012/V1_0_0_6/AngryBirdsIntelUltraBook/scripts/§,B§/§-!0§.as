package §,B§
{
   import flash.events.Event;
   
   public class §-!0§ extends Event
   {
      
      public static const §>!R§:String = "OnCloseComplete";
       
      
      private var §9k§:Popup;
      
      public function §-!0§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§9k§ = param2;
      }
      
      public function get §!!i§() : Popup
      {
         return this.§9k§;
      }
      
      override public function clone() : Event
      {
         return new §-!0§(type,this.§9k§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
