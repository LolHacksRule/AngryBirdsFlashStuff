package com.angrybirds.engine.camera
{
   import com.angrybirds.data.level.LevelCameraModel;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.engine.LevelMain;
   
   public class LevelMainCustom extends LevelCamera
   {
       
      
      public function LevelMainCustom(param1:LevelMain, param2:LevelModel, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      override protected function calculateCameraScale(param1:LevelCameraModel) : Number
      {
         return super.calculateCameraScale(param1);
      }
      
      override public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         if(param1 < centerX - maxWidth / 2 || param1 > centerX + maxWidth / 2)
         {
            return true;
         }
         if(param2 < centerY - maxWidth / 2 * 3 / 4)
         {
            return true;
         }
         if(param2 > centerY + maxWidth / 2 * 3 / 4)
         {
            return true;
         }
         return false;
      }
   }
}
