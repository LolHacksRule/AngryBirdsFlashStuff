package com.rovio.graphics
{
   import starling.display.DisplayObject;
   
   public class AnimationFrame implements IAnimationFrame
   {
       
      
      private var mEndTimeMilliSeconds:Number;
      
      public function AnimationFrame(param1:Number)
      {
         super();
         this.mEndTimeMilliSeconds = param1;
      }
      
      public function get endTimeMilliSeconds() : Number
      {
         return this.mEndTimeMilliSeconds;
      }
      
      public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         return null;
      }
   }
}
