package com.angrybirds.engine.objects
{
   public interface ILevelObjectUpdateManagerSpace extends ILevelObjectUpdateManager
   {
       
      
      function shootLaser(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void;
      
      function slowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void;
      
      function locationIsOutOfBounds(param1:Number, param2:Number) : Boolean;
      
      function getClosestLaserTargetPig(param1:Number, param2:Number) : LevelObjectPigSpace;
   }
}
