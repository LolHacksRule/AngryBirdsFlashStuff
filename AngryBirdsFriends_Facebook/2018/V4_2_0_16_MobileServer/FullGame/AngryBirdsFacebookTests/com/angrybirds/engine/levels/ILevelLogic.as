package com.angrybirds.engine.levels
{
   import com.angrybirds.engine.objects.LevelObjectBase;
   
   public interface ILevelLogic
   {
       
      
      function levelStarted() : void;
      
      function update(param1:Number) : void;
      
      function objectCreated(param1:LevelObjectBase) : void;
      
      function objectRemoved(param1:LevelObjectBase) : void;
   }
}
