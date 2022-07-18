package §1#R§
{
   import §[!m§.§1!v§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §!C§:String = "layer_close_request";
       
      
      public var §^!F§:int;
      
      public var §#"^§:§1!v§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§1!v§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§^!F§ = param2;
         this.§#"^§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§^!F§,this.§#"^§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
