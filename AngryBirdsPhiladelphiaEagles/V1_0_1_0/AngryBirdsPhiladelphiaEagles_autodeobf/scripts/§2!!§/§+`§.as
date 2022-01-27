package §2!!§
{
   import flash.events.Event;
   
   public class §+`§ extends Event
   {
      
      public static const §%@§:String = "OnCloseComplete";
       
      
      private var §9@§:Popup;
      
      public function §+`§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§9@§ = param2;
      }
      
      public function get §;w§() : Popup
      {
         return this.§9@§;
      }
      
      override public function clone() : Event
      {
         return new §+`§(type,this.§9@§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
