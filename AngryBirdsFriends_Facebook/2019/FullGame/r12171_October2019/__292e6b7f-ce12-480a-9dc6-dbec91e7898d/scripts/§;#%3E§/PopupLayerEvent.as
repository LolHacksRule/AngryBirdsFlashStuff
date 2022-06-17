package §;#>§
{
   import § $0§.§#"K§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const § "<§:String = "layer_close_request";
       
      
      public var §9e§:int;
      
      public var §+$2§:§#"K§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§#"K§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§9e§ = param2;
         this.§+$2§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§9e§,this.§+$2§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
