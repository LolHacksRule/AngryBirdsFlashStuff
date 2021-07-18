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
      
      public function LevelBorders(param1:LevelMain, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.mLevelMain = param1;
         this.mBorderLeft_B2 = int.MAX_VALUE;
         this.mBorderRight_B2 = int.MIN_VALUE;
         for each(_loc3_ in param2.Cameras.Camera)
         {
            _loc6_ = 0;
            _loc7_ = 0;
            if(_loc3_.@leftBorder.toString() != "")
            {
               _loc6_ = _loc3_.@leftBorder;
               _loc7_ = _loc3_.@rightBorder;
            }
            else
            {
               _loc8_ = 0.5 * LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE;
               _loc6_ = _loc3_.@x;
               _loc7_ = _loc3_.@x;
               _loc6_ -= _loc8_;
               _loc7_ += _loc8_;
            }
            if(_loc6_ < this.mBorderLeft_B2)
            {
               this.mBorderLeft_B2 = _loc6_;
            }
            if(_loc7_ > this.mBorderRight_B2)
            {
               this.mBorderRight_B2 = _loc7_;
            }
         }
         for each(_loc4_ in param2.Item)
         {
            if(_loc4_.@x < this.mBorderLeft_B2)
            {
               this.mBorderLeft_B2 = _loc4_.@x;
            }
            if(_loc4_.@x > this.mBorderRight_B2)
            {
               this.mBorderRight_B2 = _loc4_.@x;
            }
         }
         _loc5_ = 0.1 * LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE;
         this.mBorderLeft_B2 -= _loc5_;
         this.mBorderRight_B2 += _loc5_;
         this.mMinScale = LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE / (this.mBorderRight_B2 - this.mBorderLeft_B2);
         this.mMinScale = Math.max(this.mMinScale,LevelCamera.SCALE_MIN);
         this.mBorderGround_B2 = LEVEL_GROUND_LEVEL_IN_BOX2D;
         this.mBorderSky_B2 = this.mBorderGround_B2 - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function isOutOfLevel(param1:Number, param2:Number) : Boolean
      {
         if(this.mLevelMain.mEditorMode)
         {
            return false;
         }
         if(param2 < this.mBorderSky_B2 || param2 > this.mBorderGround_B2 + 50 || param1 < this.mBorderLeft_B2 || param1 > this.mBorderRight_B2)
         {
            return true;
         }
         return false;
      }
      
      public function reLoadBasedOnExistingLevel() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:LevelObject = null;
         var _loc5_:Number = NaN;
         this.mBorderLeft_B2 = int.MAX_VALUE;
         this.mBorderRight_B2 = int.MIN_VALUE;
         _loc1_ = 0.5 * LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE / this.mLevelMain.mLevelCamera.mSlingshotCameraScale;
         _loc2_ = this.mLevelMain.mLevelCamera.mSlingshotCameraX - _loc1_;
         _loc3_ = this.mLevelMain.mLevelCamera.mSlingshotCameraX + _loc1_;
         if(_loc2_ < this.mBorderLeft_B2)
         {
            this.mBorderLeft_B2 = _loc2_;
         }
         if(_loc3_ > this.mBorderRight_B2)
         {
            this.mBorderRight_B2 = _loc3_;
         }
         _loc1_ = 0.5 * LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE / this.mLevelMain.mLevelCamera.mCastleCameraScale;
         _loc2_ = this.mLevelMain.mLevelCamera.mCastleCameraX - _loc1_;
         _loc3_ = this.mLevelMain.mLevelCamera.mCastleCameraX + _loc1_;
         if(_loc2_ < this.mBorderLeft_B2)
         {
            this.mBorderLeft_B2 = _loc2_;
         }
         if(_loc3_ > this.mBorderRight_B2)
         {
            this.mBorderRight_B2 = _loc3_;
         }
         for each(_loc4_ in this.mLevelMain.mLevelObjects.mObjects)
         {
            if(!_loc4_.isGround() && _loc4_.isTexture())
            {
               if(_loc4_.getBody().GetPosition().x < this.mBorderLeft_B2)
               {
                  this.mBorderLeft_B2 = _loc4_.getBody().GetPosition().x;
               }
               if(_loc4_.getBody().GetPosition().x > this.mBorderRight_B2)
               {
                  this.mBorderRight_B2 = _loc4_.getBody().GetPosition().x;
               }
            }
         }
         _loc5_ = 0.1 * LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE;
         this.mBorderLeft_B2 -= _loc5_;
         this.mBorderRight_B2 += _loc5_;
         this.mMinScale = LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE / (this.mBorderRight_B2 - this.mBorderLeft_B2);
         this.mMinScale = Math.max(this.mMinScale,LevelCamera.SCALE_MIN);
         this.mBorderGround_B2 = LEVEL_GROUND_LEVEL_IN_BOX2D;
         this.mBorderSky_B2 = this.mBorderGround_B2 - 200;
      }
   }
}
