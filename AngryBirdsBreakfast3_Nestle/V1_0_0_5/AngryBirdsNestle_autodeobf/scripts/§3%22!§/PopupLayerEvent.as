package §3"!§
{
   import §5u§.§ z§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §<!§:String = "layer_close_request";
       
      
      public var §`'§:int;
      
      public var §"t§:§ z§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§ z§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§`'§ = param2;
         this.§"t§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§`'§,this.§"t§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
