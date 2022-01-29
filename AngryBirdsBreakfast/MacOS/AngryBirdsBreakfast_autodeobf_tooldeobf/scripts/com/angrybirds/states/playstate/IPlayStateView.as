package com.angrybirds.states.playstate
{
   import com.rovio.ui.Components.UIContainerRovio;
   import flash.events.IEventDispatcher;
   
   public interface IPlayStateView extends IEventDispatcher
   {
       
      
      function get viewContainer() : UIContainerRovio;
      
      function isEnabled() : Boolean;
      
      function disable(param1:Boolean) : void;
      
      function enable(param1:Boolean) : void;
      
      function dispose() : void;
      
      function update(param1:Number) : void;
   }
}
