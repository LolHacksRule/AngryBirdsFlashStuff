package com.angrybirds.engine.objects
{
   public interface IAnimationListener
   {
       
      
      function handleAnimationEnd(param1:String, param2:int, param3:int) : void;
      
      function playSound(param1:String) : void;
   }
}
