package §""§
{
   import flash.events.Event;
   
   public class §8>§ extends Event
   {
      
      public static const §2!$§:String = "OnCloseComplete";
       
      
      private var §`N§:Popup;
      
      public function §8>§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§`N§ = param2;
      }
      
      public function get §+P§() : Popup
      {
         return this.§`N§;
      }
      
      override public function clone() : Event
      {
         return new §8>§(type,this.§`N§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
