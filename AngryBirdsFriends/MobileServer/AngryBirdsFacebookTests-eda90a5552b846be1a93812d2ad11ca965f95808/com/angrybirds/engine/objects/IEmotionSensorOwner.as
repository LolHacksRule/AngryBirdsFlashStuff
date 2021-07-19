package com.angrybirds.engine.objects
{
   public interface IEmotionSensorOwner
   {
       
      
      function objectEnteredSensor(param1:LevelObjectBase, param2:LevelObjectEmotionSensor) : void;
      
      function objectExitedSensor(param1:LevelObjectBase, param2:LevelObjectEmotionSensor) : void;
   }
}
