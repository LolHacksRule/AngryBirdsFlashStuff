package com.angrybirds.engine.camera
{
   public class CameraData
   {
       
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var mScale:Number;
      
      protected var mLeftSide:Boolean;
      
      public function CameraData(x:Number, y:Number, scale:Number, leftSide:Boolean)
      {
         super();
         this.mX = x;
         this.mY = y;
         this.mScale = scale;
         this.mLeftSide = leftSide;
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
