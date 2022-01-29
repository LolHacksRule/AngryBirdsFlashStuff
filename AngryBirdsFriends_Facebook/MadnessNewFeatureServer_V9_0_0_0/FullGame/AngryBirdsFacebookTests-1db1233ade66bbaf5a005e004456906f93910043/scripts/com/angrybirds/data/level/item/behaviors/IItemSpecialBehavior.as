package com.angrybirds.data.level.item.behaviors
{
   import com.angrybirds.engine.LevelMain;
   
   public interface IItemSpecialBehavior
   {
       
      
      function initialize(param1:LevelMain) : void;
      
      function canHandleEvent(param1:String) : Boolean;
      
      function performAction(param1:String, param2:String) : void;
      
      function update(param1:int) : void;
      
      function clear() : void;
   }
}
