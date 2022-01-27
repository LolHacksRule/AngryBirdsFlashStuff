package §=!"§
{
   import §+"2§.§>!p§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §4!r§:String = "layer_close_request";
       
      
      public var §#N§:int;
      
      public var §6!d§:§>!p§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§>!p§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§#N§ = param2;
         this.§6!d§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§#N§,this.§6!d§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
