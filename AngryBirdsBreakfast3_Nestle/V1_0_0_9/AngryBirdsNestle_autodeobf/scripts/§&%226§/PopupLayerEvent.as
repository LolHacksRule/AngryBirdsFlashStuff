package §&"6§
{
   import §1!s§.§]r§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §[[§:String = "layer_close_request";
       
      
      public var §0;§:int;
      
      public var §3E§:§]r§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§]r§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§0;§ = param2;
         this.§3E§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§0;§,this.§3E§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
