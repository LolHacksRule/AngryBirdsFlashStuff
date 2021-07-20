package §"$§
{
   import flash.events.Event;
   
   public class §`§ extends Event
   {
      
      public static const ON_CLOSE_COMPLETE:String = "OnCloseComplete";
       
      
      private var §^!'§:Popup;
      
      public function §`§(type:String, popup:Popup, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.§^!'§ = popup;
      }
      
      public function get popup() : Popup
      {
         return this.§^!'§;
      }
      
      override public function clone() : Event
      {
         return new §`§(type,this.§^!'§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
