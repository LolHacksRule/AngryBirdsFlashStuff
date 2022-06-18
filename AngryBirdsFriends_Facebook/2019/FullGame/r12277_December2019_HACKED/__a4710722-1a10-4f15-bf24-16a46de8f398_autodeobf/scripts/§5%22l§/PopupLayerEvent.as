package §5"l§
{
   import §9!6§.§7#%§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §7G§:String = "layer_close_request";
       
      
      public var §<#y§:int;
      
      public var §=!I§:§7#%§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§7#%§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§<#y§ = param2;
         this.§=!I§ = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§<#y§,this.§=!I§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
