package com.AngryBirds.LevelPlayer
{
   import com.AngryBirds.LevelItemsData.LevelThemeBackgroundLayer;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class LevelBackgroundLayer extends Sprite
   {
      
      public static const ENABLE_STATIC_LAYER_BITMAP_CACHING:Boolean = true;
       
      
      public var mOneItemWidth:int;
      
      public var mLoopCount:int;
      
      public var mSpeed:Number;
      
      public var mForeground:Boolean;
      
      public var mLowestScale:Number;
      
      public function LevelBackgroundLayer(param1:Class, param2:LevelThemeBackgroundLayer)
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:Bitmap = null;
         var _loc11_:Matrix = null;
         var _loc12_:MovieClip = null;
         this.mLowestScale = LevelCamera.SCALE_MIN;
         super();
         var _loc3_:MovieClip = (new param1() as MovieClip).getChildByName(param2.mName) as MovieClip;
         var _loc4_:Number = 1;
         if(param2.mScale != 0)
         {
            _loc4_ = param2.mScale;
         }
         if(param2.mScale != 0)
         {
            _loc3_.scaleX = _loc4_;
            _loc3_.scaleY = _loc4_;
         }
         else
         {
            _loc4_ = 1;
         }
         this.mOneItemWidth = new param1().getChildByName(param2.mName).width - 2;
         this.mLoopCount = 1 + (LevelMain.LEVEL_WIDTH_PIXEL + this.mOneItemWidth * this.mLowestScale - 1) / (this.mOneItemWidth * this.mLowestScale);
         if(!param2.mTileable)
         {
            this.mLoopCount = 1;
         }
         this.mSpeed = param2.mSpeed;
         this.mForeground = param2.mForeground;
         if(ENABLE_STATIC_LAYER_BITMAP_CACHING && param2.mStatic)
         {
            _loc5_ = this.mLoopCount * this.mOneItemWidth * _loc4_;
            _loc6_ = _loc3_.height * _loc4_;
            _loc7_ = new BitmapData(_loc5_,_loc6_,true,0);
            _loc8_ = -_loc3_.getBounds(this).y;
            _loc9_ = 0;
            while(_loc9_ < this.mLoopCount)
            {
               (_loc11_ = new Matrix()).scale(_loc4_,_loc4_);
               _loc11_.translate(this.mOneItemWidth * _loc9_,_loc8_);
               _loc7_.draw(_loc3_,_loc11_);
               _loc9_++;
            }
            (_loc10_ = new Bitmap(_loc7_)).y = -_loc8_;
            _loc10_.smoothing = true;
            addChild(_loc10_);
         }
         else
         {
            _loc9_ = 0;
            while(_loc9_ < this.mLoopCount)
            {
               _loc12_ = new param1().getChildByName(param2.mName);
               addChild(_loc12_);
               _loc12_.x = this.mOneItemWidth * _loc9_ + param2.mXOffset;
               _loc9_++;
            }
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
         if(this.mLoopCount == 1)
         {
            return;
         }
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
