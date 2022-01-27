package com.angrybirds.engine.camera
{
   public class AdjustableCameraData extends CameraData
   {
       
      
      public function AdjustableCameraData(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         super(param1,param2,param3,param4);
      }
      
      public function set x(param1:Number) : void
      {
         mX = param1;
      }
      
      public function set y(param1:Number) : void
      {
         mY = param1;
      }
      
      public function set scale(param1:Number) : void
      {
         mScale = param1;
      }
   }
}