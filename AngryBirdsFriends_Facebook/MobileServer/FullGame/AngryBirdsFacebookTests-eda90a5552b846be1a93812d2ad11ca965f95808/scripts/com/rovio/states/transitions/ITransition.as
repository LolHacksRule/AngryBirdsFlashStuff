package com.rovio.states.transitions
{
   import flash.display.Stage;
   import flash.events.IEventDispatcher;
   
   public interface ITransition extends IEventDispatcher
   {
       
      
      function set stage(param1:Stage) : void;
      
      function get stage() : Stage;
      
      function run(param1:Number) : void;
      
      function dispose() : void;
      
      function show() : void;
      
      function hide() : void;
      
      function stop(param1:Boolean = true) : void;
      
      function start(param1:TransitionData) : void;
      
      function get isRunning() : Boolean;
   }
}
