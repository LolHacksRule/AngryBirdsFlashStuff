package §+F§
{
   import flash.events.Event;
   
   public class §5S§ extends Event
   {
      
      public static const §'!Z§:String = "OnCloseComplete";
       
      
      private var §>H§:Popup;
      
      public function §5S§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§>H§ = param2;
      }
      
      public function get popup() : Popup
      {
         return this.§>H§;
      }
      
      override public function clone() : Event
      {
         return new §5S§(type,this.§>H§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
