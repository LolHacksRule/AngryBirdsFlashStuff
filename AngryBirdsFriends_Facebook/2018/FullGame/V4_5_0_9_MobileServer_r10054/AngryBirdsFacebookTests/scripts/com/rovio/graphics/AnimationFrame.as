package com.rovio.graphics
{
   import starling.display.DisplayObject;
   
   public class AnimationFrame implements IAnimationFrame
   {
       
      
      private var mName:String;
      
      private var mEndTimeMilliSeconds:Number;
      
      public function AnimationFrame(name:String, endTimeMilliSeconds:Number)
      {
         super();
         this.mName = name;
         this.mEndTimeMilliSeconds = endTimeMilliSeconds;
      }
      
      public function get endTimeMilliSeconds() : Number
      {
         return this.mEndTimeMilliSeconds;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function updateDisplayObject(target:DisplayObject, useColor:Boolean = true) : DisplayObject
      {
         return null;
      }
      
      public function flipAnimation(horizontally:Boolean) : void
      {
      }
   }
}
