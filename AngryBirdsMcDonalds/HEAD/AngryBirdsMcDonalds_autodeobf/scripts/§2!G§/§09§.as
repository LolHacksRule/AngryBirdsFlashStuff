package §2!G§
{
   import flash.events.Event;
   
   public class §09§ extends Event
   {
      
      public static const §-9§:String = "OnCloseComplete";
       
      
      private var §'8§:Popup;
      
      public function §09§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§'8§ = param2;
      }
      
      public function get popup() : Popup
      {
         return this.§'8§;
      }
      
      override public function clone() : Event
      {
         return new §09§(type,this.§'8§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
