package com.AngryBirds.LevelPlayer
{
   import flash.display.Sprite;
   
   public class LevelBorders extends Sprite
   {
      
      public static const LEVEL_BORDER_GROUND_THICKNESS:Number = 50;
      
      public static var smLevelCamaraShiftToFocusGround:Number = 0;
      
      public static const LEVEL_GROUND_PREFERRED_LEVEL:Number = 0.5;
      
      public static const LEVEL_GROUND_LEVEL_IN_BOX2D:Number = 50;
       
      
      public var mBorderLeft_B2:Number;
      
      public var mBorderRight_B2:Number;
      
      public var mBorderSky_B2:Number;
      
      public var mBorderGround_B2:Number;
      
      public var mMinScale:Number;
      
      public var mLevelMain:LevelMain;
      
      public function LevelBorders(newLevelMain:LevelMain, level:XML)
      {
         var camera:XML = null;
         var item:XML = null;
         var margin:Number = NaN;
         var width:Number = NaN;
         var left:Number = NaN;
         var right:Number = NaN;
         super();
         this.mLevelMain = newLevelMain;
         this.mBorderLeft_B2 = int.MAX_VALUE;
         this.mBorderRight_B2 = int.MIN_VALUE;
         for each(camera in level.Cameras.Camera)
         {
            width = 0.5 * LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE / camera.@scale;
            left = camera.@x;
            right = camera.@x;
            left -= width;
            right += width;
            if(left < this.mBorderLeft_B2)
            {
               this.mBorderLeft_B2 = left;
            }
            if(right > this.mBorderRight_B2)
            {
               this.mBorderRight_B2 = right;
            }
         }
         for each(item in level.Item)
         {
            if(item.@x < this.mBorderLeft_B2)
            {
               this.mBorderLeft_B2 = item.@x;
            }
            if(item.@x > this.mBorderRight_B2)
            {
               this.mBorderRight_B2 = item.@x;
            }
         }
         margin = 0.1 * LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE;
         this.mBorderLeft_B2 -= margin;
         this.mBorderRight_B2 += margin;
         this.mMinScale = LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE / (this.mBorderRight_B2 - this.mBorderLeft_B2);
         this.mMinScale = Math.max(this.mMinScale,LevelCamera.SCALE_MIN);
         this.mBorderGround_B2 = LEVEL_GROUND_LEVEL_IN_BOX2D;
         this.mBorderSky_B2 = this.mBorderGround_B2 - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function isOutOfLevel(aX:Number, aY:Number) : Boolean
      {
         if(this.mLevelMain.mEditorMode)
         {
            return false;
         }
         if(aY < this.mBorderSky_B2 || aY > this.mBorderGround_B2 + 50 || aX < this.mBorderLeft_B2 || aX > this.mBorderRight_B2)
         {
            return true;
         }
         return false;
      }
      
      public function reLoadBasedOnExistingLevel() : void
      {
         var width:Number = NaN;
         var left:Number = NaN;
         var right:Number = NaN;
         var obj:LevelObject = null;
         var margin:Number = NaN;
         this.mBorderLeft_B2 = int.MAX_VALUE;
         this.mBorderRight_B2 = int.MIN_VALUE;
         width = 0.5 * LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE / this.mLevelMain.mLevelCamera.mSlingshotCameraScale;
         left = this.mLevelMain.mLevelCamera.mSlingshotCameraX - width;
         right = this.mLevelMain.mLevelCamera.mSlingshotCameraX + width;
         if(left < this.mBorderLeft_B2)
         {
            this.mBorderLeft_B2 = left;
         }
         if(right > this.mBorderRight_B2)
         {
            this.mBorderRight_B2 = right;
         }
         width = 0.5 * LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE / this.mLevelMain.mLevelCamera.mCastleCameraScale;
         left = this.mLevelMain.mLevelCamera.mCastleCameraX - width;
         right = this.mLevelMain.mLevelCamera.mCastleCameraX + width;
         if(left < this.mBorderLeft_B2)
         {
            this.mBorderLeft_B2 = left;
         }
         if(right > this.mBorderRight_B2)
         {
            this.mBorderRight_B2 = right;
         }
         for each(obj in this.mLevelMain.mLevelObjects.mObjects)
         {
            if(!obj.isGround() && obj.isTexture())
            {
               if(obj.getBody().GetPosition().x < this.mBorderLeft_B2)
               {
                  this.mBorderLeft_B2 = obj.getBody().GetPosition().x;
               }
               if(obj.getBody().GetPosition().x > this.mBorderRight_B2)
               {
                  this.mBorderRight_B2 = obj.getBody().GetPosition().x;
               }
            }
         }
         margin = 0.1 * LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE;
         this.mBorderLeft_B2 -= margin;
         this.mBorderRight_B2 += margin;
         this.mMinScale = LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE / (this.mBorderRight_B2 - this.mBorderLeft_B2);
         this.mMinScale = Math.max(this.mMinScale,LevelCamera.SCALE_MIN);
         this.mBorderGround_B2 = LEVEL_GROUND_LEVEL_IN_BOX2D;
         this.mBorderSky_B2 = this.mBorderGround_B2 - 200;
      }
   }
}
