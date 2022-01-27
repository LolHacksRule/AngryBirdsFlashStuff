package §>%§
{
   import §-!r§.§>!L§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §+V§:String = "layer_close_request";
       
      
      public var §[r§:int;
      
      public var §[!3§:§>!L§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§>!L§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§[r§ = param2;
         this.§[!3§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§[r§,this.§[!3§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
