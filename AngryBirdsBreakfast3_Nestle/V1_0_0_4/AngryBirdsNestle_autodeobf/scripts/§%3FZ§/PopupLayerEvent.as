package §?Z§
{
   import §?N§.§!q§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §1^§:String = "layer_close_request";
       
      
      public var §--§:int;
      
      public var §break§:§!q§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§!q§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§--§ = param2;
         this.§break§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§--§,this.§break§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
