package §6=§
{
   import flash.events.Event;
   
   public class §0i§ extends Event
   {
      
      public static const §51§:String = "OnCloseComplete";
       
      
      private var §0N§:Popup;
      
      public function §0i§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§0N§ = param2;
      }
      
      public function get §[M§() : Popup
      {
         return this.§0N§;
      }
      
      override public function clone() : Event
      {
         return new §0i§(type,this.§0N§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
