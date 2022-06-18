package §;U§
{
   import flash.events.Event;
   
   public class §#!>§ extends Event
   {
      
      public static const §2!>§:String = "OnCloseComplete";
       
      
      private var §`c§:Popup;
      
      public function §#!>§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§`c§ = param2;
      }
      
      public function get §[!!§() : Popup
      {
         return this.§`c§;
      }
      
      override public function clone() : Event
      {
         return new §#!>§(type,this.§`c§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
