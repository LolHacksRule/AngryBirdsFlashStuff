package §8]§
{
   import §1!i§.§?O§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §9! §:String = "layer_close_request";
       
      
      public var §,!1§:int;
      
      public var §7!U§:§?O§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§?O§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§,!1§ = param2;
         this.§7!U§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§,!1§,this.§7!U§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
