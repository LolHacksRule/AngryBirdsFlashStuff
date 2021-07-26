package §'M§
{
   import §0!s§.§9"r§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §&!u§:String = "layer_close_request";
       
      
      public var §^#l§:int;
      
      public var §"$>§:§9"r§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§9"r§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§^#l§ = param2;
         this.§"$>§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§^#l§,this.§"$>§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
