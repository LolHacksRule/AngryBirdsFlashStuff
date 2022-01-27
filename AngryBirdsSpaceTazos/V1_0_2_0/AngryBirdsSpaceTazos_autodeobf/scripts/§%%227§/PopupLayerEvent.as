package §%"7§
{
   import §"_§.§ !x§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §79§:String = "layer_close_request";
       
      
      public var § !o§:int;
      
      public var §`!U§:§ !x§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§ !x§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§ !o§ = param2;
         this.§`!U§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§ !o§,this.§`!U§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
