package §##§
{
   import flash.events.Event;
   
   public class §9![§ extends Event
   {
      
      public static const ON_CLOSE_COMPLETE:String = "OnCloseComplete";
       
      
      private var §5<§:Popup;
      
      public function §9![§(type:String, popup:Popup, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.§5<§ = popup;
      }
      
      public function get popup() : Popup
      {
         return this.§5<§;
      }
      
      override public function clone() : Event
      {
         return new §9![§(type,this.§5<§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
