package com.angrybirds.engine.camera
{
   public class CameraData
   {
       
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var mScale:Number;
      
      protected var mLeftSide:Boolean;
      
      public function CameraData(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         super();
         this.mX = param1;
         this.mY = param2;
         this.mScale = param3;
         this.mLeftSide = param4;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get scale() : Number
      {
         return this.mScale;
      }
      
      public function get isLeftSide() : Boolean
      {
         return this.mLeftSide;
      }
   }
}
