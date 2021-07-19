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
      
      public function PopupLayerEvent(type:String, layerIndex:int, layerData:PopupLayerData = null, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.layerIndex = layerIndex;
         this.layerData = layerData;
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
