package com.rovio.ui.popup.event
{
   import com.rovio.ui.popup.PopupLayerData;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const ClOSE_REQUEST:String = "layer_close_request";
       
      
      public var layerIndex:int;
      
      public var layerData:PopupLayerData;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:PopupLayerData = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.layerIndex = param2;
         this.layerData = param3;
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.layerIndex,this.layerData,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
