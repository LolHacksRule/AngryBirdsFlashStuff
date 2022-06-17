package §'!s§
{
   import flash.events.Event;
   
   public class §%Z§ extends Event
   {
      
      public static const §&I§:String = "OnCloseComplete";
       
      
      private var §]"6§:Popup;
      
      public function §%Z§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§]"6§ = param2;
      }
      
      public function get §<!a§() : Popup
      {
         return this.§]"6§;
      }
      
      override public function clone() : Event
      {
         return new §%Z§(type,this.§]"6§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
