package § !X§
{
   import flash.events.Event;
   
   public class §2l§ extends Event
   {
      
      public static const §4!R§:String = "OnCloseComplete";
       
      
      private var §=!S§:Popup;
      
      public function §2l§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§=!S§ = param2;
      }
      
      public function get §"!T§() : Popup
      {
         return this.§=!S§;
      }
      
      override public function clone() : Event
      {
         return new §2l§(type,this.§=!S§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
