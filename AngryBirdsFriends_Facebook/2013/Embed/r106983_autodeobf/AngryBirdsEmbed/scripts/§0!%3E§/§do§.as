package §0!>§
{
   import flash.events.Event;
   
   public class §do§ extends Event
   {
      
      public static const §9E§:String = "OnCloseComplete";
       
      
      private var §`D§:Popup;
      
      public function §do§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§`D§ = param2;
      }
      
      public function get §#e§() : Popup
      {
         return this.§`D§;
      }
      
      override public function clone() : Event
      {
         return new §do§(type,this.§`D§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
