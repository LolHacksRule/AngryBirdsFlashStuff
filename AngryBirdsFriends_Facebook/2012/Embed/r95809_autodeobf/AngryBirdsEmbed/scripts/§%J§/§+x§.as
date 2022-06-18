package §%J§
{
   import flash.events.Event;
   
   public class §+x§ extends Event
   {
      
      public static const §3_§:String = "OnCloseComplete";
       
      
      private var §0c§:Popup;
      
      public function §+x§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§0c§ = param2;
      }
      
      public function get §=P§() : Popup
      {
         return this.§0c§;
      }
      
      override public function clone() : Event
      {
         return new §+x§(type,this.§0c§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
