package §3"!§
{
   import §5u§.§<!k§;
   import flash.events.Event;
   
   public class §&U§ extends Event
   {
      
      public static const §5e§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §8p§:§<!k§;
      
      public function §&U§(param1:String, param2:§<!k§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§8p§ = param2;
      }
      
      public function get popup() : §<!k§
      {
         return this.§8p§;
      }
      
      override public function clone() : Event
      {
         return new §&U§(type,this.§8p§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
