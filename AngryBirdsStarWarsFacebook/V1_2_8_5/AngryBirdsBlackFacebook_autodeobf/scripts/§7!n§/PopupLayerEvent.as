package §7!n§
{
   import §+"x§.§ !Y§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §=s§:String = "layer_close_request";
       
      
      public var §0D§:int;
      
      public var §&"5§:§ !Y§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§ !Y§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§0D§ = param2;
         this.§&"5§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§0D§,this.§&"5§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
