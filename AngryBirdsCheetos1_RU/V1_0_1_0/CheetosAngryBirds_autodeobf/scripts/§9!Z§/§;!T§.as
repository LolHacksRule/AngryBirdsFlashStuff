package §9!Z§
{
   import flash.events.Event;
   
   public class §;!T§ extends Event
   {
      
      public static const §4!<§:String = "OnCloseComplete";
       
      
      private var §'Y§:Popup;
      
      public function §;!T§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§'Y§ = param2;
      }
      
      public function get §?,§() : Popup
      {
         return this.§'Y§;
      }
      
      override public function clone() : Event
      {
         return new §;!T§(type,this.§'Y§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
