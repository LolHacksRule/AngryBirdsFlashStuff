package §#<§
{
   import §4m§.§'!c§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §`"o§:String = "layer_close_request";
       
      
      public var §+a§:int;
      
      public var §1q§:§'!c§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§'!c§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§+a§ = param2;
         this.§1q§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§+a§,this.§1q§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
