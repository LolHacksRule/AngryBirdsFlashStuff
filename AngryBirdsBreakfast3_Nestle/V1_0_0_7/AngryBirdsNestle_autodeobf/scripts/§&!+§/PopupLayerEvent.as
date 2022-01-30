package §&!+§
{
   import §!!`§.§9@§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §`[§:String = "layer_close_request";
       
      
      public var §5! §:int;
      
      public var §6S§:§9@§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§9@§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§5! § = param2;
         this.§6S§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§5! §,this.§6S§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
