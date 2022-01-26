package §##§
{
   import flash.events.Event;
   
   public class §+G§ extends Event
   {
      
      public static const §2C§:String = "OnCloseComplete";
       
      
      private var §8!'§:Popup;
      
      public function §+G§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§8!'§ = param2;
      }
      
      public function get §-#§() : Popup
      {
         return this.§8!'§;
      }
      
      override public function clone() : Event
      {
         return new §+G§(type,this.§8!'§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
