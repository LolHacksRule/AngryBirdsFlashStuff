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
      
      public function LevelBackgroundLayer(themeClass:Class, instanceName:String, aSpeed:Number, aForeground:Boolean)
      {
         var layer:MovieClip = null;
         this.mLowestScale = LevelCamera.SCALE_MIN;
         super();
         this.mOneItemWidth = Math.round(new themeClass().getChildByName(instanceName).width - 2);
         this.mLoopCount = 1 + (LevelMain.LEVEL_WIDTH_PIXEL + this.mOneItemWidth * this.mLowestScale - 1) / (this.mOneItemWidth * this.mLowestScale);
         this.mSpeed = aSpeed;
         this.mForeground = aForeground;
         for(var i:int = 0; i < this.mLoopCount; i++)
         {
            layer = new themeClass().getChildByName(instanceName);
            addChild(layer);
            layer.x = this.mOneItemWidth * i;
         }
      }
      
      public function clear() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function setSideScroll(sideScroll:Number, verticalScroll:Number) : void
      {
         var scroll:Number = this.mSpeed * sideScroll;
         x = -scroll;
         var temp:Number = LevelMain.LEVEL_WIDTH_PIXEL * (1 - LevelCamera.smLevelScale);
         while(x <= -this.mOneItemWidth)
         {
            x += this.mOneItemWidth;
         }
         while(x > 0)
         {
            x -= this.mOneItemWidth;
         }
         y = -verticalScroll;
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
