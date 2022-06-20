package com.rovio.ui.popup
{
   import com.rovio.BasicGame;
   import com.rovio.data.localization.LocalizationManager;
   import flash.display.MovieClip;
   import flash.events.IEventDispatcher;
   
   public interface IPopup extends IEventDispatcher
   {
       
      
      function get id() : String;
      
      function get layerIndex() : int;
      
      function get priority() : int;
      
      function set priority(param1:int) : void;
      
      function get isTransitioning() : Boolean;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function open(param1:MovieClip, param2:LocalizationManager, param3:BasicGame, param4:Boolean = false) : void;
      
      function close(param1:Boolean = false, param2:Boolean = true) : void;
   }
}
