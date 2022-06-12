package §1"0§
{
   import §^!,§.§+[§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §3$6§:String = "layer_close_request";
       
      
      public var § $<§:int;
      
      public var § "1§:§+[§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§+[§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§ $<§ = param2;
         this.§ "1§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§ $<§,this.§ "1§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
