package §@<§
{
   import flash.events.Event;
   
   public class §!z§ extends Event
   {
      
      public static const §#!Q§:String = "OnCloseComplete";
       
      
      private var §?s§:Popup;
      
      public function §!z§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§?s§ = param2;
      }
      
      public function get §4!1§() : Popup
      {
         return this.§?s§;
      }
      
      override public function clone() : Event
      {
         return new §!z§(type,this.§?s§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
