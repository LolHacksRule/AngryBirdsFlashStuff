package com.rovio.ui.popup
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface IPopupLayer extends IEventDispatcher
   {
       
      
      function set useQueue(param1:Boolean) : void;
      
      function get useQueue() : Boolean;
      
      function set margin(param1:Rectangle) : void;
      
      function get margin() : Rectangle;
      
      function get index() : int;
      
      function get data() : PopupLayerData;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function setIndexDepth() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:PopupLayerData, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void;
      
      function clearQueue() : void;
      
      function getOpenPopupById(param1:String) : IPopup;
      
      function isPopupOpen() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
