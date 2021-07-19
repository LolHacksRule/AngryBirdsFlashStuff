package §^r§
{
   import §7!H§.§'"H§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §^!I§:String = "layer_close_request";
       
      
      public var §<!]§:int;
      
      public var § L§:§'"H§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§'"H§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§<!]§ = param2;
         this.§ L§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§<!]§,this.§ L§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
