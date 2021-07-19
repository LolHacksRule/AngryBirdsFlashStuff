package com.rovio.tween
{
   public interface ISimpleTween
   {
       
      
      function stop() : void;
      
      function gotoEndAndStop() : void;
      
      function get isCompleted() : Boolean;
      
      function get isPaused() : Boolean;
      
      function pause() : void;
      
      function set automaticCleanup(param1:Boolean) : void;
      
      function get automaticCleanup() : Boolean;
      
      function set stopOnComplete(param1:Boolean) : void;
      
      function get stopOnComplete() : Boolean;
      
      function play() : void;
      
      function set delay(param1:Number) : void;
      
      function set onComplete(param1:Function) : void;
      
      function set onStart(param1:Function) : void;
      
      function updateState() : void;
   }
}
