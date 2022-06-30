package §44§
{
   import flash.events.Event;
   
   public class §3!_§ extends Event
   {
      
      public static const §"!<§:String = "OnCloseComplete";
       
      
      private var §^!1§:Popup;
      
      public function §3!_§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§^!1§ = param2;
      }
      
      public function get §,5§() : Popup
      {
         return this.§^!1§;
      }
      
      override public function clone() : Event
      {
         return new §3!_§(type,this.§^!1§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
