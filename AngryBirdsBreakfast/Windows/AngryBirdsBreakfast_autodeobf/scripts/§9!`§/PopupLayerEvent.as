package §9!`§
{
   import §48§.§5!c§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §]]§:String = "layer_close_request";
       
      
      public var §<4§:int;
      
      public var §7!e§:§5!c§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§5!c§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§<4§ = param2;
         this.§7!e§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§<4§,this.§7!e§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
