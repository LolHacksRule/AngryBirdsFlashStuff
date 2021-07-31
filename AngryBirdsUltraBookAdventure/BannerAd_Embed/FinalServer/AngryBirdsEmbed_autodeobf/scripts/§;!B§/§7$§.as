package §;!B§
{
   import flash.events.Event;
   
   public class §7$§ extends Event
   {
      
      public static const §^O§:String = "OnCloseComplete";
       
      
      private var §`+§:Popup;
      
      public function §7$§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§`+§ = param2;
      }
      
      public function get § set§() : Popup
      {
         return this.§`+§;
      }
      
      override public function clone() : Event
      {
         return new §7$§(type,this.§`+§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
