package com.rovio.tween
{
   public interface IManagedTween extends ISimpleTween
   {
       
      
      function dispose() : void;
      
      function update(param1:Number) : void;
      
      function set catchErrors(param1:Boolean) : void;
      
      function restart() : void;
   }
}
