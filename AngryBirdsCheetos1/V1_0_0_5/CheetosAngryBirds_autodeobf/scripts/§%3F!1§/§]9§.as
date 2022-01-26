package §?!1§
{
   import flash.events.Event;
   
   public class §]9§ extends Event
   {
      
      public static const §7v§:String = "OnCloseComplete";
       
      
      private var §`_§:Popup;
      
      public function §]9§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§`_§ = param2;
      }
      
      public function get §>2§() : Popup
      {
         return this.§`_§;
      }
      
      override public function clone() : Event
      {
         return new §]9§(type,this.§`_§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
