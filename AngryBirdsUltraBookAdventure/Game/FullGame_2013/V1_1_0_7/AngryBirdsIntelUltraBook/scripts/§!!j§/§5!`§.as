package §!!j§
{
   import flash.events.Event;
   
   public class §5!`§ extends Event
   {
      
      public static const §#V§:String = "OnCloseComplete";
       
      
      private var §?G§:Popup;
      
      public function §5!`§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§?G§ = param2;
      }
      
      public function get §%'§() : Popup
      {
         return this.§?G§;
      }
      
      override public function clone() : Event
      {
         return new §5!`§(type,this.§?G§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
