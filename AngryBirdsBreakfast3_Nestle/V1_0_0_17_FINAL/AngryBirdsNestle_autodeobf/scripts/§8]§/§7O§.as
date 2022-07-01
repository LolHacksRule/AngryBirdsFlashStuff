package §8]§
{
   import §1!i§.§?!a§;
   import flash.events.Event;
   
   public class §7O§ extends Event
   {
      
      public static const §&G§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §>o§:§?!a§;
      
      public function §7O§(param1:String, param2:§?!a§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§>o§ = param2;
      }
      
      public function get popup() : §?!a§
      {
         return this.§>o§;
      }
      
      override public function clone() : Event
      {
         return new §7O§(type,this.§>o§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
