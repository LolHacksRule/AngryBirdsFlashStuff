package §@!i§
{
   import § S§.§?!`§;
   import flash.events.Event;
   
   public class §!!Y§ extends Event
   {
      
      public static const §7A§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §>R§:§?!`§;
      
      public function §!!Y§(param1:String, param2:§?!`§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§>R§ = param2;
      }
      
      public function get popup() : §?!`§
      {
         return this.§>R§;
      }
      
      override public function clone() : Event
      {
         return new §!!Y§(type,this.§>R§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
