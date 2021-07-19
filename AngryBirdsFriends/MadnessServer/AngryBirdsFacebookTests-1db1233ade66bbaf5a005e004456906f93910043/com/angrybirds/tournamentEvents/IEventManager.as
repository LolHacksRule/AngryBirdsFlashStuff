package com.angrybirds.tournamentEvents
{
   import com.rovio.ui.Views.UIView;
   
   public interface IEventManager
   {
       
      
      function get ID() : String;
      
      function setData(param1:Object) : void;
      
      function formatEvent() : void;
      
      function openEventPopup() : Boolean;
      
      function openInfoPopup() : Boolean;
      
      function initEventButton(param1:UIView) : void;
      
      function updateEventButtonState() : void;
      
      function onUIInteraction(param1:String) : void;
      
      function updateEventButtonUIScale(param1:Number, param2:Number, param3:Number) : void;
   }
}
