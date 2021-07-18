package com.AngryBirds.LevelPlayer
{
   import flash.display.MovieClip;
   
   public class LevelBackgroundLayer extends MovieClip
   {
       
      
      public var mOneItemWidth:int;
      
      public var mLoopCount:int;
      
      public var mSpeed:Number;
      
      public var mForeground:Boolean;
      
      public var mLowestScale:Number;
      
      public function LevelBackgroundLayer(param1:Class, param2:String, param3:Number, param4:Boolean)
      {
         var _loc6_:MovieClip = null;
         this.mLowestScale = LevelCamera.SCALE_MIN;
         super();
         this.mOneItemWidth = Math.round(new param1().getChildByName(param2).width - 2);
         this.mLoopCount = 1 + (LevelMain.LEVEL_WIDTH_PIXEL + this.mOneItemWidth * this.mLowestScale - 1) / (this.mOneItemWidth * this.mLowestScale);
         this.mSpeed = param3;
         this.mForeground = param4;
         var _loc5_:int = 0;
         while(_loc5_ < this.mLoopCount)
         {
            _loc6_ = new param1().getChildByName(param2);
            addChild(_loc6_);
            _loc6_.x = this.mOneItemWidth * _loc5_;
            _loc5_++;
         }
      }
      
      public function clear() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.mSpeed * param1;
         x = -_loc3_;
         var _loc4_:Number = LevelMain.LEVEL_WIDTH_PIXEL * (1 - LevelCamera.smLevelScale);
         while(x <= -this.mOneItemWidth)
         {
            x += this.mOneItemWidth;
         }
         while(x > 0)
         {
            x -= this.mOneItemWidth;
         }
         y = -param2;
         this.adjustLocationDueToScaling();
      }
      
      public function adjustLocationDueToScaling() : void
      {
         while(LevelCamera.smLevelX + x * LevelCamera.smLevelScale > 0)
         {
            x -= this.mOneItemWidth;
         }
      }
      
      public function setSideScroll2(param1:Number) : void
      {
         param1 = x + param1;
         x = -param1;
         while(x <= -this.mOneItemWidth)
         {
            x += this.mOneItemWidth;
         }
         while(x > 0)
         {
            x -= this.mOneItemWidth;
         }
      }
   }
}
