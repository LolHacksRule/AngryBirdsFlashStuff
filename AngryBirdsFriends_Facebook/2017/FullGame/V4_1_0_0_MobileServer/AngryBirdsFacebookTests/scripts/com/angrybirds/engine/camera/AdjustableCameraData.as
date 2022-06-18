package com.angrybirds.engine.camera
{
   public class AdjustableCameraData extends CameraData
   {
       
      
      public function AdjustableCameraData(x:Number, y:Number, scale:Number, leftSide:Boolean)
      {
         super(x,y,scale,leftSide);
      }
      
      public function set x(x:Number) : void
      {
         mX = x;
      }
      
      public function set y(y:Number) : void
      {
         mY = y;
      }
      
      public function set scale(scale:Number) : void
      {
         mScale = scale;
      }
   }
}
