package §4$<§
{
   import §<#m§.§`"g§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §'!x§:String = "layer_close_request";
       
      
      public var §>!s§:int;
      
      public var §7"R§:§`"g§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§`"g§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§>!s§ = param2;
         this.§7"R§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§>!s§,this.§7"R§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
