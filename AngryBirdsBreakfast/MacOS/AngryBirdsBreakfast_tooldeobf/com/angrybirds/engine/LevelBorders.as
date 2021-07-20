package com.angrybirds.engine
{
   import com.angrybirds.engine.camera.LevelCamera;
   import com.angrybirds.data.level.LevelCameraModel;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.object.LevelObjectModel;
   
   public class LevelBorders
   {
      
      public static const LEVEL_BORDER_GROUND_THICKNESS:Number = 50;
      
      public static const LEVEL_GROUND_LEVEL_IN_BOX2D:Number = 0;
       
      
      protected var mBorderLeft_B2:Number;
      
      protected var mBorderRight_B2:Number;
      
      protected var mBorderSky_B2:Number;
      
      protected var mBorderGround_B2:Number;
      
      public var mMinScale:Number;
      
      public var mLevelMain:LevelMain;
      
      public function LevelBorders(param1:LevelMain, param2:LevelModel)
      {
         var _loc5_:LevelCameraModel = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:LevelObjectModel = null;
         super();
         this.mLevelMain = param1;
         this.mBorderLeft_B2 = int.MAX_VALUE;
         this.mBorderRight_B2 = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.cameraCount)
         {
            _loc5_ = param2.getCamera(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = LevelMain.LEVEL_WIDTH_PIXEL * 4 * LevelMain.PIXEL_TO_B2_SCALE;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.mBorderLeft_B2)
            {
               this.mBorderLeft_B2 = _loc7_;
            }
            if(_loc8_ > this.mBorderRight_B2)
            {
               this.mBorderRight_B2 = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.mBorderLeft_B2)
            {
               this.mBorderLeft_B2 = _loc9_.x;
            }
            if(_loc9_.x > this.mBorderRight_B2)
            {
               this.mBorderRight_B2 = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE;
         this.mBorderLeft_B2 -= _loc4_;
         this.mBorderRight_B2 += _loc4_;
         this.mMinScale = LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE / (this.mBorderRight_B2 - this.mBorderLeft_B2);
         this.mMinScale = Math.max(this.mMinScale,LevelCamera.SCALE_MIN);
         this.mBorderSky_B2 = param2.slingshotY - 160;
         this.mBorderGround_B2 = param2.slingshotY + 160;
      }
      
      public function get leftBorder() : Number
      {
         return this.mBorderLeft_B2;
      }
      
      public function get rightBorder() : Number
      {
         return this.mBorderRight_B2;
      }
      
      public function get skyBorder() : Number
      {
         return this.mBorderSky_B2;
      }
      
      public function get groundBorder() : Number
      {
         return this.mBorderGround_B2;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function isOutOfLevel(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.mBorderSky_B2 || param2 > this.mBorderGround_B2 || param1 < this.mBorderLeft_B2 || param1 > this.mBorderRight_B2)
         {
            return true;
         }
         return false;
      }
   }
}
