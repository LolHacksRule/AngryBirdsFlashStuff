package §@!i§
{
   import § S§.§@0§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §6"#§:String = "layer_close_request";
       
      
      public var §8!-§:int;
      
      public var §5!"§:§@0§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§@0§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§8!-§ = param2;
         this.§5!"§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§8!-§,this.§5!"§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
