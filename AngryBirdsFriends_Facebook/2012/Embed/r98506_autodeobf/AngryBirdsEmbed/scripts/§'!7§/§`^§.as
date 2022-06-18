package §'!7§
{
   import flash.events.Event;
   
   public class §`^§ extends Event
   {
      
      public static const §>y§:String = "OnCloseComplete";
       
      
      private var §7!2§:Popup;
      
      public function §`^§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§7!2§ = param2;
      }
      
      public function get §0!§() : Popup
      {
         return this.§7!2§;
      }
      
      override public function clone() : Event
      {
         return new §`^§(type,this.§7!2§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
