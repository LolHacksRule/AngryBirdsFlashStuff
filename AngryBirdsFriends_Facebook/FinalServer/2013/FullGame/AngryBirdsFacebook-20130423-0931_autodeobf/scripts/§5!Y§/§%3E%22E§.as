package §5!Y§
{
   import flash.events.Event;
   
   public class §>"E§ extends Event
   {
      
      public static const §6"-§:String = "OnCloseComplete";
       
      
      private var §+!I§:Popup;
      
      public function §>"E§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§+!I§ = param2;
      }
      
      public function get §]!X§() : Popup
      {
         return this.§+!I§;
      }
      
      override public function clone() : Event
      {
         return new §>"E§(type,this.§+!I§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
