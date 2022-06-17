package §;w§
{
   import §;$5§.§##q§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §'"§:String = "layer_close_request";
       
      
      public var §9#I§:int;
      
      public var §@!0§:§##q§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§##q§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§9#I§ = param2;
         this.§@!0§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§9#I§,this.§@!0§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
